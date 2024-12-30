#!/usr/bin/python
import sys
#import matplotlib as mpl
#mpl.use('tkagg')

from math import sqrt, isnan
import numpy as np
#import matplotlib.pyplot as plt
#from scipy.optimize import curve_fit

import lmfit
from scipy.special import erf
from scipy.signal import find_peaks
from pandas import read_csv
from argparse import ArgumentParser

class FitData:
    
    def __init__(self, path_data, conn, scan_idx=-1, num_scan=-1, scan_mask=None, iskip=1, prbs_len=30000000, run=True, short=False):
        self.all_data = read_csv(path_data, header=None, delim_whitespace=True)
        self.path = path_data
        self.num_scan = num_scan        
        self.scan_idx = scan_idx
        self.conn = conn
        self.iskip = iskip
        self.prbs_len = prbs_len
        self.shift_map = []

        if self.scan_idx is not -1:
            self.single_scan = self.get_one_scan(self.scan_idx)
            self.do_fit(scan_idx, self.single_scan)
        elif scan_mask is not None:
            self.results = []
            for i,mask_val in enumerate(scan_mask):
                if mask_val:
                    if self.conn is not None:
                        self.conn.send("Fitting BER Scan #{}...".format(i))
                    i_scan = self.get_one_scan(i)
                    res = self.do_fit(i, i_scan, short=short)
                    if short: 
                        self.shift_map.append(res)
                        continue
                    if res is None:
                        res = {'Fit Eye Opening': -999, 'Data Eye Opening': -999, 'Fit Quality': 1.0}
                    res["Module"] = mask_val
                    self.results.append(res)
                else:
                    print("Skipping unused ELINK with RX index {}".format(i))
                    if short:
                        self.shift_map.append(False)

        print("Done fitting")
        print("going back to run_bert.py")

    def get_results(self):
        return self.results

    def get_shift_map(self):
        return self.shift_map

    def do_fit(self, scan_idx, scan, return_scan=False, short=False):
        self.guess = []

        scan = self.invert_check(scan)
        #scan, good_scan = self.wrap_check(scan)
        maxes = self.get_peaks_temp(scan, short=short)

        if short:
            return len(maxes) < 2

        if len(maxes) > 2:
            maxes = maxes[:2]

        if len(maxes) < 2:
            if self.conn is not None:
                self.conn.send("Bad scan with index {}, double check that this line is connected".format(scan_idx))
            return {'Fit Eye Opening': -999, 'Data Eye Opening': -999, 'Fit Quality': 1.0}

        #if not good_scan:
        #    self.conn.send("Bad scan with index {}, double check that this line is connected".format(scan_idx))
        #    return {"Eye Opening": -999, "Midpoint": -999, "Midpoint Errors": -999}

        xmin, xmax = maxes
        #xmin, xmax = self.get_window(scan)
        scan, xmin, xmax = self.trim_scan(scan, xmin, xmax)
        maxes = (xmin, xmax)
        scan = self.pad_scan(scan, 100)
        guess = self.get_guess(scan, maxes)

        i_fit = 0

        self.fit_params = self.fit_scan(scan, i_fit, guess)

        if self.fit_params is not None:
            data = self.plot_scan(scan, scan_idx, self.fit_params)
        else:
            return None       
 
        if return_scan:
            return data, scan
        else:
            return data

    def invert_check(self, scan):
        # If the line needs to be inverted, we can simply invert the data by subtraction

        temp_ydata = scan["ydata"]
        temp_xdata = scan["xdata"]

        #if 240000008 in temp_ydata:
        if (self.prbs_len + 1) * 8 in temp_ydata:
            #temp_ydata = [240000008 - x for x in temp_ydata]
            temp_ydata = [((self.prbs_len + 1) * 8) - x for x in temp_ydata]

        scan['ydata'] = temp_ydata
        scan['xdata'] = temp_xdata

        return scan

    def wrap_check(self, scan):
        # Function to fix data if your crossover occurs across 499 -> 0
        temp_ydata = scan["ydata"]
        temp_xdata = scan["xdata"]
        if not (temp_ydata[0] > 0 and temp_ydata[499] > 0):
            pass

        else:
            first_zero = -1
            for i,x in enumerate(temp_ydata):
                if x == 0:
                    first_zero = i 
                    break
            if first_zero == -1:
                print("No delays with zero bit errors; bad line or not connected")
                return scan, False
            temp_ydata = temp_ydata[first_zero:] + temp_ydata[:first_zero]
            temp_xdata = temp_xdata[first_zero:] + [x + 499 for x in temp_xdata[:first_zero]]
            scan["ydata"] = temp_ydata
            scan["xdata"] = temp_xdata

        return scan, True

    def get_one_scan(self, iscan):
        scan = {'xdata': [], 'ydata': []}
        for i in range(len(self.all_data[0])):
            scan['xdata'].append(self.all_data[0][i])
            scan['ydata'].append(self.all_data[iscan][i])
            
        return scan

    def get_guess(self, scan, maxes):
        max_y = max(scan['ydata'])
        x1 = 0
        x2 = 0
        mid = maxes[1] - maxes[0]
        least_diff = 1e12
        for (x,y) in zip(scan['xdata'],scan['ydata']):
            if x < maxes[0] or x > maxes[1]: continue
            diff = abs(max_y/2 - y)
            if diff < least_diff:
                least_diff = diff
                if x < mid:
                    x1 = x
                else:
                    x2 = x
            if x == mid:
                least_diff = 1e12

        guess = [maxes[0], 5, max_y, maxes[1], 5, max_y]
        
        return guess

    def plot_scan(self, scan, scan_idx, fit_params):
        x1, w1, TD1, x2, w2, TD2 = fit_params
        mid_err = 0

        x = np.array(scan['xdata'])
        data = np.array(scan['ydata'])

        y = self.fit_func(x, x1, w1, TD1, x2, w2, TD2)

        data = data.astype(float)
        y = y.astype(float)

        data /= data.max() * 2
        y /= y.max() * 2

        y_sumres = y[y<0.001]
        data_sumres = data[y<0.001]

        sum_res = np.sum(abs(data_sumres - y_sumres))

        ui = np.count_nonzero((x <= 0.5) & (x >=-0.5))
        eo_fit = np.count_nonzero(y < 1e-12)
        eo_data = np.count_nonzero(data < 1e-12)

        eo_fit /= float(ui)
        eo_data /= float(ui)

        #width = x2 - x1
        #mid_idx = round((scan['xdata'].index(x2)+scan['xdata'].index(x1))/2)
        #print(mid)
        #if mid > 0 and mid < 499:
        #    mid_err = scan["ydata"][mid]
        #else:
        #    mid_err = -1

        #fig, axs = plt.subplots(2, gridspec_kw={'height_ratios': [2, 1]})
        #axs[0].scatter(scan['xdata'], scan['ydata'], label="BERT Data", s=10)
        #axs[0].set_yscale('log')
        #axs[0].grid(color="black", linestyle=':')
        #axs[0].axis([min(scan['xdata'])-15, max(scan['xdata'])+15, 0.1, 1e13])
        #y_fit = [self.fit_func(x, x1, w1, TD1, x2, w2, TD2) for x in scan['xdata']]
        #axs[0].plot(scan['xdata'], y_fit, color="red", label="Fit")
        #axs[1].set_xlabel("Time Delay")
        #axs[1].grid(color='black', linestyle=":")
        #axs[0].set_ylabel("BER Count")
        #axs[1].set_ylabel("Fit Pull")
        #fig.suptitle("BER Scan for TRIG_ELINK_{} ({:e} PRBS per delay)".format(scan_idx, self.num_scan))
        #axs[0].legend(loc="upper center")
        #axs[0].set_title("Eye-Opening Width: {}".format(round(x2 - x1, 1)))
        #self.plot_residuals(scan, fit_params, axs[1])
        #plt.savefig("figures/{}_elink{}.png".format(self.path.split("/")[1][:-4], scan_idx))
       
        results = {
            'Fit Eye Opening': round(eo_fit, 3),
            'Data Eye Opening': round(eo_data, 3),
            'Fit Quality': round(float(sum_res), 4),
        }

        #return {"Eye Opening": round(x2-x1), "Midpoint": round((x2+x1)/2), "Midpoint Errors": mid_err}
        return results


    def plot_residuals(self, scan, fit_params, ax):
        res = []
        for (x,y) in zip(scan['xdata'], scan['ydata']):
            val = (y - self.fit_func(x, *fit_params)) / sqrt(self.fit_func(x, *fit_params))
            if isnan(val):
                val = 0
            res.append(val)
        ax.scatter(scan['xdata'], res, s=10)

    def get_peaks_temp(self, scan, short=False):

        peaks = find_peaks(scan['ydata'], width=10)[0]

        print(peaks)
        return peaks

    def get_peaks(self, scan):
        
        maxes = []

        for (x,y) in zip(scan['xdata'], scan['ydata']):
            if x < scan['xdata'][1] or x >= scan['xdata'][-2]:
                continue
           
            one_back = scan['ydata'][scan['xdata'].index(x)-1]
            two_back = scan['ydata'][scan['xdata'].index(x)-2]
            one_forward = scan['ydata'][scan['xdata'].index(x)+1]
            two_forward = scan['ydata'][scan['xdata'].index(x)+2]
 
            if one_back <= y and two_back <= y and one_forward <= y and two_forward <= y and y != 0:
                if x-self.iskip not in maxes and x-2*self.iskip not in maxes: 
                    maxes.append(x)
        return maxes            


    def get_window(self, scan):
        start = scan['ydata'].index(max(scan['ydata'][:len(scan['ydata'])//2]))
        end = scan['ydata'].index(max(scan['ydata'][len(scan['ydata'])//2:]))
        if start <= 50:
            start = scan['ydata'].index(max(scan['ydata'][50:len(scan['ydata'])//2 + 50]))
            end = scan['ydata'].index(max(scan['ydata'][len(scan['ydata'])//2 + 50:]))

        if start == end:
            end = 499

        return start, end

    def trim_scan(self, scan, xmin, xmax):
        min_idx = scan['xdata'].index(xmin)
        max_idx = scan['xdata'].index(xmax)

        #return {'xdata': scan['xdata'][min_idx:max_idx], 'ydata': scan['ydata'][min_idx:max_idx]}
        temp = {'xdata': scan['xdata'][min_idx:max_idx], 'ydata': scan['ydata'][min_idx:max_idx]}
        temp_x =  np.array(temp['xdata'])
        temp_x = temp_x - temp_x.mean()
        temp_x = temp_x / (temp_x.max()*2)
        temp_x = list(temp_x)
        temp['xdata'] = temp_x

        return temp, min(temp['xdata']), max(temp['xdata'])
    
    def pad_scan(self, scan, pad):

        self.iskip = scan['xdata'][1] - scan['xdata'][0]

        start = scan['xdata'][0]
        end = scan['xdata'][-1]

        front_y_padding = [max(scan['ydata'][:len(scan['ydata'])//2]) for i in range(pad)]
        back_y_padding = [max(scan['ydata'][len(scan['ydata'])//2:]) for i in range(pad)]
        
        front_x_padding = [i for i in np.arange(start - pad*self.iskip, start, self.iskip)]
        back_x_padding = [i for i in np.arange(end, end + pad*self.iskip, self.iskip)]

        return {'xdata': front_x_padding + scan['xdata'] + back_x_padding, 'ydata': front_y_padding + scan['ydata'] + back_y_padding}

    def normalize_scan(self, scan):
        return {'xdata': scan['xdata'], 'ydata': [x / max(scan['ydata']) for x in scan['ydata']]}
        

    def fit_func(self, x, x1, w1, TD1, x2, w2, TD2):
        return TD1 * (1 - (1 + erf((x - x1) / w1))/2) + TD2 * ((1 + erf((x-x2) / w2))/2)

    def fit_scan(self, scan, i_fit, guess):
        #try:
        #params, _ = curve_fit(self.fit_func, scan['xdata'], scan['ydata'], p0 = guess, sigma=1/np.sqrt(scan['ydata']), maxfev=5000)        
        model = lmfit.Model(self.fit_func)
        params = model.make_params(x1=1, w1=1, TD1=1, x2=1, w2=1, TD2=1)

        params['x1'].value = guess[0]
        params['x1'].min = -1.0
        params['x1'].max = 0.0

        params['w1'].value = 0.01
        params['w1'].min = 0.001
        params['w1'].max = 0.1

        params['TD1'].value = guess[2]
        params['TD1'].min = guess[2] / 2
        params['TD1'].max = guess[2] * 2

        params['x2'].value = guess[3]
        params['x2'].min = 0.0
        params['x2'].max = 1.0
        
        params['w2'].value = 0.01
        params['w2'].min = 0.001 
        params['w2'].max = 0.1

        params['TD2'].value = guess[5]
        params['TD2'].min = guess[5] / 2
        params['TD2'].max = guess[5] * 2

        y_arr = np.array(scan['ydata'])

        #weights = np.ones_like(y_arr)
        #weights = weights * ((y_arr == y_arr[0]) | (y_arr == y_arr[-1]) | (y_arr <= 0.001 * y_arr.max()))
        #weights[weights == np.inf] = 1

        mask = ((y_arr == y_arr[0]) | (y_arr == y_arr[-1]) | (y_arr <= 0.001 * y_arr.max()))

        fit_x = np.array(scan['xdata'])[mask]
        fit_y = np.array(scan['ydata'])[mask]

        #result = model.fit(scan['ydata'], params, x=scan['xdata'], weights=weights)
        result = model.fit(fit_y, params, x=fit_x)

        params = list(result.params.valuesdict().values())
        #except:
        #    print("Bad Scan, moving to next")
        #    return None
        if i_fit == 0:
            return params
        else:
            params = self.fit_scan(scan, i_fit - 1, params)

        return params

    def get_fit_params(self):
        return self.fit_params

    def get_scan(self):
        return self.scan

    #def fit_output(self,)

#parser = ArgumentParser(description='Run fit on rising and falling edge for Wagon bit error rate data')
#parser.add_argument('-i', '--input', action="store", type=str, dest="input", default="", help='Input path containing BER csv file')
#parser.add_argument('-n', '--numscan', action="store", type=float, dest="num_scan", default=0.0, help='Number of Bits Scanned')
#parser.add_argument('--all', action="store_true", dest="do_all", default=False, help='Run fit for all scans in file')
#parser.add_argument('--scan_idx', action="store", dest="scan_idx", type=int, default=-1, help='Index of elink to fit (None if fitting all)')

#args = parser.parse_args()
if __name__ == "__main__":
    FitData("BERT.csv", do_all=True)


