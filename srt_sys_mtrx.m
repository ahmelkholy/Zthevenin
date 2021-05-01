clear all
load('C:\Users\ahm_e\Documents\MATLAB\micro_grid\phase_locked_loop\Zthevenin\zth_impedance.mat')
temp_matrix=[[1:33]' grdR grdxl abs(grdR+grdxl*i)];
sortrows(temp_matrix,4);
grdR=temp_matrix(:,2);
grdxl=temp_matrix(:,3);
save('zth_impedance.mat','grdR','grdxl')
