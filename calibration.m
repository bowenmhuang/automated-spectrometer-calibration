clear;close all;
data=xlsread('./srmcalibrationdata.xlsx');
%ftir data is usually from high to low wavenumber - must reverse the data
V=flipud(data(:,1));
T=flipud(data(:,2));
peaks=[540,840,900,1030,1070,1150,1580,1600,2850,3000,3030,3060,3080];
Vcentroids=findCentroids(V,T,peaks);
Vcentroids=Vcentroids';
%to get output in their raw numerical value, go to Home -> Preferences (in
%Environment section) -> Command Window -> Numeric format -> "long g"