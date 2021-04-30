Main
zbusabs=abs(zthev);
[row_max,column_max]=find(zbusabs==max(zbusabs));
G.Rg(column_max)
G.Lg(column_max)