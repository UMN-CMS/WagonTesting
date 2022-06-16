#!/usr/bin/python

import matplotlib as mpl
mpl.use('tkagg')

from math import sqrt, isnan
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
from lmfit import Model
from lmfit.lineshapes import step
from scipy.special import erf
from pandas import read_csv
from argparse import ArgumentParser

class FitData:
    
    def __init__(self, path_data, scan_idx=-1, num_scan=-1, do_all=False):
        self.all_data = read_csv(path_data, header=None, delim_whitespace=True)
        self.path = path_data
        self.num_scan = num_scan        
        self.scan_idx = scan_idx

        if self.scan_idx is not -1:
            self.single_scan = self.get_one_scan(self.scan_idx)
            self.do_fit(scan_idx, self.single_scan)
        elif do_all:
            for i in range(0, 10):
                i_scan = self.get_one_scan(i)
                self.do_fit(i, i_scan)

    def do_fit(self, scan_idx, scan):
        self.guess = []

        guess = self.get_guess(scan)
        xmin, xmax = self.get_window(scan)
        scan = self.trim_scan(scan, xmin, xmax)
        scan = self.pad_scan(scan, 50)

        i_fit = 0

        fit_params = self.fit_scan(scan, i_fit, guess)

        self.plot_scan(scan, scan_idx, fit_params)


    def get_one_scan(self, iscan):
        scan = {'xdata': [], 'ydata': []}
        for i in range(len(self.all_data[0])):
            scan['xdata'].append(self.all_data[0][i])
            scan['ydata'].append(self.all_data[iscan][i])
            
        return scan

    def get_guess(self, scan):
        max_y = max(scan['ydata'])
        x1 = 0
        x2 = 0
        least_diff = 1e12
        for (x,y) in zip(scan['xdata'],scan['ydata']):
            diff = abs(max_y/2 - y)
            if diff < least_diff:
                least_diff = diff
                if x < 210:
                    x1 = x
                else:
                    x2 = x
            if x == 210:
                least_diff = 1e12

        guess = [x1, 5, max_y, x2, 5, max_y]
        
        return guess

    def plot_scan(self, scan, scan_idx, fit_params):
        x1, w1, TD1, x2, w2, TD2 = fit_params

        fig, axs = plt.subplots(2, gridspec_kw={'height_ratios': [2, 1]})
        axs[0].scatter(scan['xdata'], scan['ydata'], label="BERT Data", s=10)
        axs[0].set_yscale('log')
        axs[0].grid(color="black", linestyle=':')
        axs[0].axis([min(scan['xdata'])-15, max(scan['xdata'])+15, 0.1, 1e13])
        y_fit = [self.fit_func(x, x1, w1, TD1, x2, w2, TD2) for x in scan['xdata']]
        axs[0].plot(scan['xdata'], y_fit, color="red", label="Fit")
        axs[1].set_xlabel("Time Delay")
        axs[1].grid(color='black', linestyle=":")
        axs[0].set_ylabel("BER Count")
        axs[1].set_ylabel("Fit Pull")
        fig.suptitle("BER Scan for TRIG_ELINK_{} ({:e} PRBS per delay)".format(scan_idx, self.num_scan))
        axs[0].legend(loc="upper center")
        axs[0].set_title("Eye-Opening Width: {}".format(round(x2 - x1, 1)))
        self.plot_residuals(scan, fit_params, axs[1])
        plt.savefig("figures/{}_elink{}.png".format(self.path.split("/")[1][:-4], scan_idx))
        plt.show()


    def plot_residuals(self, scan, fit_params, ax):
        res = []
        for (x,y) in zip(scan['xdata'], scan['ydata']):
            val = (y - self.fit_func(x, *fit_params)) / sqrt(self.fit_func(x, *fit_params))
            if isnan(val):
                val = 0
            res.append(val)
        ax.scatter(scan['xdata'], res, s=10)

    def get_window(self, scan):
        start = scan['ydata'].index(max(scan['ydata'][:len(scan['ydata'])//2]))
        end = scan['ydata'].index(max(scan['ydata'][len(scan['ydata'])//2:]))

        return start, end

    def trim_scan(self, scan, xmin, xmax):
        return {'xdata': scan['xdata'][xmin:xmax], 'ydata': scan['ydata'][xmin:xmax]}

    
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
        params, _ = curve_fit(self.fit_func, scan['xdata'], scan['ydata'], p0 = guess, maxfev=5000)        

        if i_fit == 0:
            return params
        else:
            params = self.fit_scan(scan, i_fit - 1, params)

        return params

parser = ArgumentParser(description='Run fit on rising and falling edge for Wagon bit error rate data')
parser.add_argument('-i', '--input', action="store", type=str, dest="input", default="", help='Input path containing BER csv file')
parser.add_argument('-n', '--numscan', action="store", type=float, dest="num_scan", default=0.0, help='Number of Bits Scanned')
parser.add_argument('--all', action="store_true", dest="do_all", default=False, help='Run fit for all scans in file')
parser.add_argument('--scan_idx', action="store", dest="scan_idx", type=int, default=-1, help='Index of elink to fit (None if fitting all)')

args = parser.parse_args()

FitData(args.input, scan_idx=args.scan_idx, num_scan=args.num_scan, do_all=args.do_all)


