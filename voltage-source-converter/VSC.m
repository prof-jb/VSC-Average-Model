%% PARAMETERS OF THE VOLTAGE SOURCE CONVERTER 
clc
clear all

Scn=1000e6;  % Nominal power
p=0.95;      %power factor
Ucn=320e3; % Nominal AC voltage

fg=50;    % Nominal AC voltage
Lc=30.31e-6;  % Converter Inductance 
Rc=0.95e-3; % converter resistance 
% Zs_PU=0.05i/(2*pi*fg);
% Za_PU=(0.01+0.2i)/(2*pi*fg);
% rla=Za_PU*(Ucn^2/Scn) % 38.94
% rls=Zs_PU*(Ucn^2/Scn)   %9.73
% 
% Ra=0.0062;
% la=0.1239;
% ls=0.0310;
Zb=Ucn^2/Scn;
la=0.2*(Zb/(2*pi*fg))
Ra=0.01*Zb;
Ls=0.05*(Zb/(2*pi*fg))
Rg_1=0.312;
tau_sum= 25e-3;
Kp_sum=(2*la)/tau_sum;
Ki_sum=(2*Ra)/tau_sum;
Kih=0.5;
% num = [1 0];
% den = [1, 0, (2*pi*fg)^2];
%  PR =2*Kih* tf(num, den)
num =[3.072 4236 3.032e05];
den=[1 62.83 9.87e04]
PR=tf(num, den)
VDC=640e3;
v_peak=Ucn*sqrt(2)/sqrt(3)
VDC_U=320e3;
VDC_L=-320e3;
Vt_dc=VDC_U-VDC_L;
N_arm=400;
Carm=8e-3;
V_M=640e3;
Wn=100;
Q=3;
Icird_ref=0;
Icirq_ref=0;


%% PLL CONTROL 

xi_pll=0.707; %sqrt(2)/2;
omega_pll=2*pi*50;


kp_pll=xi_pll*2*omega_pll/v_peak;

tau_pll=2*xi_pll/omega_pll;

ki_pll=kp_pll/tau_pll;
%% CURRENT LOOP CONTROL 

tauc=10e-3;
Ll=Ls+la/2;
rl=Ra/2;
kp_c=Ll/tauc;
ki_c=rl/tauc;

%%  current circulation loop 

kp_cc=la/tauc;
ki_cc=Ra/tauc;


%% POWER CONTROL  

ki_pq=(3/2)*v_peak;
%tauc=1e-3;
taup=100e-3;% 5e-3,10e-3,100e-3
kp_p=(tauc)/(ki_pq*taup)
ki_p=1/(ki_pq*taup) 






