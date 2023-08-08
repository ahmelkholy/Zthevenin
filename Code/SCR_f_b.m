clc,clear all
Main
Vpcc=9.517385384837926e+03;
Snom=3000000;
G.Lg=grdxl;
G.Rg=grdR;
for i=1:33
SCR(i)=(Vpcc^2)/(abs(G.Rg(i)+G.Lg(i)*i)*Snom);
end
SCR=round(SCR',0)
weak_buses=find(SCR<10)