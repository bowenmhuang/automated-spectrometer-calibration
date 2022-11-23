# automated-spectrometer-calibration

This MATLAB code automates the calibration of a Fourier-Transform infrared (FTIR) spectroscope.

This is done by placing a standard reference material into the spectroscope, measuring its transmittance spectrum, and then comparing the values at the peaks with those expected.

However, the transmittance spectrum is a graph made up of finite points, so to find the peak values, the centroid method should be used to average points around the peaks.

The code automatically identifies peaks and applies the centroid method to measure how well-calibrated the spectroscope is.

See here for more information on the methodology:

https://www-s.nist.gov/srmors/certificates/1921b.pdf
