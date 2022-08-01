 
 using array to make columns;
 
 
 
 data sixvar;
 infile "/home/u61939380/6var (2).txt";
 input var_1 var_2 var_3 var_4 var_5 var_6;
 run;
 
 
 data arr;
 set sixvar;
 array r(6) var_1-var_2;
 array t(6) t_1-t_2;
 do i=1 to 6;
 t(i)= r(i)*o.05 +r(i);
 end;
 run;
 
 proc print data=arr;
 var var_1-var_2 t_1-t_2;
 run;
 
 