function output = displayServiceTimeCounterOne();
    
    I = [1;2;3;4;5]; %Inter arrival time
    P = [0.10;0.25;0.30;0.20;0.15]; %Probability
    C = [0.10;0.35;0.65;0.85;1.00]; %CDF
    RL = [1;11;36;66;86]; %Range Lower
    RU = [10;35;65;85;100]; %Range Upper
    
    fprintf('\n')
    disp('Service Time for Kiosk 1 Table')
    disp('----------------------------------------------------------------------------------')
    disp('  Srvice Time For Kiosk 1   |  Probability   |        CDF        |        Range')
    disp('----------------------------------------------------------------------------------')
    fprintf(' %15.0f            | %8.2f       |   %8.2f        | %7.0f - %1.0f\n',[I,P,C,RL,RU]')
    disp('----------------------------------------------------------------------------------')
    fprintf('\n')