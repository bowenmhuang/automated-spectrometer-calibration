clear;close all;
data=xlsread('./GO data.xlsx');
%ftir data is usually from high to low wavenumber - must reverse the data
V=flipud(data(:,1));
centroidmatrix=zeros(4,6);
for i=1:6
T=flipud(data(:,i+1));
peaks=[1050,1600,1700,3400];
Vcentroids=findCentroids(V,T,peaks);
Vcentroids=Vcentroids';
centroidmatrix(:,i)=Vcentroids;
end
centroidmatrix
%to get output in their raw numerical value, go to Home -> Preferences (in
%Environment section) -> Command Window -> Numeric format -> "long g"