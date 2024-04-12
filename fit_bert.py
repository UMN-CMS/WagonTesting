#!/usr/bin/python
import sys
#import matplotlib as mpl
#mpl.use('tkagg')

from math import sqrt, isnan
#import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
from scipy.special import erf
from pandas import read_csv
from argparse import ArgumentParser

class FitData:
    
    def __init__(self, path_data, conn, scan_idx=-1, num_scan=-1, scan_mask=None, iskip=1):
        self.all_data = read_csv(path_data, header=None, delim_whitespace=True)
        self.path = path_data
        self.num_scan = num_scan        
        self.scan_idx = scan_idx
        self.conn = conn
        self.iskip = iskip

        if self.scan_idx is not -1:
            self.single_scan = self.get_one_scan(self.scan_idx)
            self.do_fit(scan_idx, self.single_scan)
        elif scan_mask is not None:
            self.results = []
            for i,mask_val in enumerate(scan_mask):
                if mask_val:
                    self.conn.send("Fitting BER Scan #{}...".format(i))
                    i_scan = self.get_one_scan(i)
                    res = self.do_fit(i, i_scan)
                    if res is None:
                        res = {'Midpoint': -999, 'Eye Opening': -999, 'Midpoint Errors': -999}
                    res["Module"] = mask_val
                    self.results.append(res)
                else:
                    print("Skipping unused ELINK with RX index {}".format(i))


    def get_results(self):
        return self.results

    def do_fit(self, scan_idx, scan):
        self.guess = []

        scan = self.invert_check(scan)
        #scan, good_scan = self.wrap_check(scan)
        maxes = self.get_peaks(scan)

        if len(maxes) > 2:
            maxes = maxes[:2]

        if len(maxes) < 2:
            self.conn.send("Bad scan with index {}, double check that this line is connected".format(scan_idx))
            return {"Eye Opening": -999, "Midpoint": -999, "Midpoint Errors": -999}

        #if not good_scan:
        #    self.conn.send("Bad scan with index {}, double check that this line is connected".format(scan_idx))
        #    return {"Eye Opening": -999, "Midpoint": -999, "Midpoint Errors": -999}

        guess = self.get_guess(scan, maxes)
        #xmin, xmax = self.get_window(scan)
        xmin, xmax = maxes
        scan = self.trim_scan(scan, xmin, xmax)
        scan = self.pad_scan(scan, 50)

        i_fit = 0

        fit_params = self.fit_scan(scan, i_fit, guess)

        if fit_params is not None:
            data = self.plot_scan(scan, scan_idx, fit_params)
        else:
            return None       
 
        return data

    def invert_check(self, scan):
        # If the line needs to be inverted, we can simply invert the data by subtraction

        temp_ydata = scan["ydata"]
        temp_xdata = scan["xdata"]

        if 240000008 in temp_ydata:
            temp_ydata = [240000008 - x for x in temp_ydata]

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

        width = round(x2 - x1)
        mid = self.iskip*round((x2+x1)/(2*self.iskip))
        if mid > 0 and mid < 499:
            mid_err = scan["ydata"][scan['xdata'].index(int(mid))]
        else:
            mid_err = -1


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
        
        return {"Eye Opening": round(x2-x1), "Midpoint": round((x2+x1)/2), "Midpoint Errors": mid_err}


    def plot_residuals(self, scan, fit_params, ax):
        res = []
        for (x,y) in zip(scan['xdata'], scan['ydata']):
            val = (y - self.fit_func(x, *fit_params)) / sqrt(self.fit_func(x, *fit_params))
            if isnan(val):
                val = 0
            res.append(val)
        ax.scatter(scan['xdata'], res, s=10)

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
        print(maxes)
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
        return {'xdata': scan['xdata'][min_idx:max_idx], 'ydata': scan['ydata'][min_idx:max_idx]}

    
    def pad_scan(self, scan, pad):

        iskip = scan['xdata'][1] - scan['xdata'][0]

        start = scan['xdata'][0]
        end = scan['xdata'][-1]

        front_y_padding = [max(scan['ydata'][:len(scan['ydata'])//2]) for i in range(pad)]
        back_y_padding = [max(scan['ydata'][len(scan['ydata'])//2:]) for i in range(pad)]
        
        front_x_padding = [i for i in range(start - pad*iskip, start, iskip)]
        back_x_padding = [i for i in range(end, end + pad*iskip, iskip)]

        return {'xdata': front_x_padding + scan['xdata'] + back_x_padding, 'ydata': front_y_padding + scan['ydata'] + back_y_padding}

    def normalize_scan(self, scan):
        return {'xdata': scan['xdata'], 'ydata': [x / max(scan['ydata']) for x in scan['ydata']]}
        

    def fit_func(self, x, x1, w1, TD1, x2, w2, TD2):
        return TD1 * (1 - (1 + erf((x - x1) / w1))/2) + TD2 * (1 + erf((x-x2) / w2))/2

    def fit_scan(self, scan, i_fit, guess):
        try:
            params, _ = curve_fit(self.fit_func, scan['xdata'], scan['ydata'], p0 = guess, maxfev=5000)        
        except:
            print("Bad Scan, moving to next")
            return None
        if i_fit == 0:
            return params
        else:
            params = self.fit_scan(scan, i_fit - 1, params)

        return params

#parser = ArgumentParser(description='Run fit on rising and falling edge for Wagon bit error rate data')
#parser.add_argument('-i', '--input', action="store", type=str, dest="input", default="", help='Input path containing BER csv file')
#parser.add_argument('-n', '--numscan', action="store", type=float, dest="num_scan", default=0.0, help='Number of Bits Scanned')
#parser.add_argument('--all', action="store_true", dest="do_all", default=False, help='Run fit for all scans in file')
#parser.add_argument('--scan_idx', action="store", dest="scan_idx", type=int, default=-1, help='Index of elink to fit (None if fitting all)')

#args = parser.parse_args()
if __name__ == "__main__":
    FitData("BERT.csv", do_all=True)


