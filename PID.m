clear 
clear clc 
clear all
num = [1] 
denom = [750 250 1]
Gp = tf(num ,denom)
H = [1]
Mc = feedback(Gp , H)
step(Mc);
grid on
hold on
%%
num1 = [1] ;

D=tf(num1 , 'InputDelay',0.2);
%%
Kp = 250;
Ki = 0  ;
Kd = 0  ;

Gc = pid(Kp , Ki , Kd)
Mc = feedback(Gc*Gp*D,H)
step(Mc);
grid on
 
