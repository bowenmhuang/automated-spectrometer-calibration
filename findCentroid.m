function [ Vcentroid ] = findCentroid( V,T,halfband )
dV=V(2)-V(1);
for index=1:halfband.k-halfband.h+2
   Ts(index)=(T(index+halfband.h-2)+T(index+halfband.h-1))/2-halfband.T1_2;
   Ws(index)=index+halfband.h-1-halfband.k-1/2;
end
Vcentroid=V(halfband.k)+dV*sum(Ts.*Ws)/sum(Ts);
end