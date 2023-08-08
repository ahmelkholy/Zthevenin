function [Rg lg]=zthevfn(busdata,linedata,gendata)
basemva = 100;  accuracy = 0.00001;  maxiter = 1000;
lfybus                              % Forms the bus admittance matrix
lfnewton               % Power flow solution by Newton-Raphson method
Zbus=zbuildpi(linedata, gendata, yload);%Forms Zbus including the load
clear n
for n=1:nbus
zthev(n)=Zbus(n,n);
end
zthev';
Rg=real(zthev');
lg=-imag(zthev')/(2*pi*50);