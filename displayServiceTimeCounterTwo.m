function output = displayServiceTimeCounterOne();
    
    I = [2;3;4;5;6]; %Inter arrival time
    P = [0.15;0.30;0.20;0.15;0.20]; %Probability
    C = [0.15;0.45;0.65;0.80;1.00]; %CDF
    RL = [1;16;46;66;81]; %Range Lower
    RU = [15;45;65;80;100]; %Range Upper
    
    fprintf('\n')
    disp('Service Time for Kiosk 2 Table')
    disp('----------------------------------------------------------------------------------')
    disp('  Srvice Time For Kiosk 2   |  Probability   |        CDF        |        Range')
    disp('----------------------------------------------------------------------------------')
    fprintf(' %15.0f            | %8.2f       |   %8.2f        | %7.0f - %1.0f\n',[I,P,C,RL,RU]')
    disp('----------------------------------------------------------------------------------')
    fprintf('\n')