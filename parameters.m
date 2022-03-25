K_vco = 250;
tau_1 = 0.0186;
tau_2 = 0.0225;

omega_vco_free = 0;

open_system('Sin_model_cs.slx');
sim('Sin_model_cs.slx');
hFig = findall(0,'tag','SIMULINK_SIMSCOPE_FIGURE');
name = strcat('NCSSimResults','_',num2str(1));
saveas(hFig, name, 'pdf');