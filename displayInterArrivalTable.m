function output = displayInterArrivalTable();
    
    I = [1;2;3;4;5]; %Inter arrival time
    P = [0.15;0.25;0.15;0.25;0.20]; %Probability
    C = [0.15;0.40;0.55;0.80;1.00]; %CDF
    RL = [1;16;41;56;81]; %Range Lower
    RU = [15;40;55;80;100]; %Range Upper
    
    fprintf('\n')
    disp('Inter-Arrival Time Table')
    disp('------------------------------------------------------------------------------')
    disp(' Inter-arrival Time   |  Probability   |        CDF        |        Range')
    disp('------------------------------------------------------------------------------')
    fprintf(' %11.0f          | %8.2f       |   %8.2f        | %7.0f - %1.0f\n',[I,P,C,RL,RU]')
    disp('------------------------------------------------------------------------------')
    fprintf('\n')
    