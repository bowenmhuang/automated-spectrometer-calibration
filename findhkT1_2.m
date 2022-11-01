function [ halfband ] = findhkT1_2( T,band )

Tband=ones(size(T))*max(T)+1;
Tband(band.indexVmin:band.indexVmax)=T(band.indexVmin:band.indexVmax);
[Tbandmin,indexTbandmin]=min(Tband);
%h and k are the positions of the first and last data points in the band.
%starting points:
h=indexTbandmin;
k=indexTbandmin;
T1_2=min((Tbandmin+T(band.indexVmin))/2,(Tbandmin+T(band.indexVmax))/2);
while T(h)<T1_2
    h=h-1;
end
while T(k)<T1_2
    k=k+1;
end
halfband.h=h;
halfband.k=k;
halfband.T1_2=T1_2;
end