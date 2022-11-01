function [ band ] = findVminmax( V,T,peak )
%index is the position of the minima within the wavenumber vector eg 914th.
%peak is the approximate of each peak.
[~,index]=min(abs(V-peak));
indexVmin=index;
while T(indexVmin)<=max(T([indexVmin-1,index]))
    indexVmin=indexVmin-1;
end
indexVmax=index;
while T(indexVmax)<=max(T([indexVmax+1,index]))
    indexVmax=indexVmax+1;
end
Vmin=V(indexVmin);
Vmax=V(indexVmax);
band.Vmin=Vmin;
band.Vmax=Vmax;
band.indexVmin=indexVmin;
band.indexVmax=indexVmax;
end