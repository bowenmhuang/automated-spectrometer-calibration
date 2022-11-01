function [ Vcentroids ] = findCentroids( V,T,peaks )
for peakno=1:length(peaks)
    peak=peaks(peakno);
    band=findVminmax(V,T,peak);
    halfband=findhkT1_2(T,band);
    Vcentroids(peakno)=findCentroid(V,T,halfband);
end
end