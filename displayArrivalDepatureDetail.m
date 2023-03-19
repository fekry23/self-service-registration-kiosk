function [arrivalTime,serviceTime,sumArrival,sumDeparture]= displayArrivalDepatureDetail(rnInterArrivalTimes,rnServiceTimes,totalCustomers);
    %objective selang seli Round Robin = each person takes an equal share of something in turn
    %take from displayServiceTimeCounterTwo and displayServiceTimeCounterOne (O)
    
    %check RN interarival time "rnInterArrivalTimes" of "rnServiceTimes" with range of interarival time "RL1"< x <"RU1"
    % how to make it selang seli first kios1 then kios2 (done by seperate odd and even)
    %arrival time = previous arrival time + interarrival time;
    
    %displayInterArrivalTable()
    I0 = [1;2;3;4;5]; %Inter arrival time
    P0 = [0.15;0.25;0.15;0.25;0.20]; %Probability
    C0 = [0.15;0.40;0.55;0.80;1.00]; %CDF
    RL0 = [1;16;41;56;81]; %Range Lower
    RU0 = [15;40;55;80;100]; %Range Upper
    
    %ServiceTimeCounterOne
    I1 = [1;2;3;4;5]; %Inter arrival time
    P1 = [0.10;0.25;0.30;0.20;0.15]; %Probability
    C1 = [0.10;0.35;0.65;0.85;1.00]; %CDF
    RL1 = [1;11;36;66;86]; %Range Lower
    RU1 = [10;35;65;85;100]; %Range Upper
    
    %ServiceTimeCounterTwo
    I2 = [2;3;4;5;6]; %Inter arrival time
    P2 = [0.15;0.30;0.20;0.15;0.20]; %Probability
    C2 = [0.15;0.45;0.65;0.80;1.00]; %CDF
    RL2 = [1;16;46;66;81]; %Range Lower
    RU2 = [15;45;65;80;100]; %Range Upper
    
    arrivalTime=[];
    serviceTime=[];
    JumlahArrival = 0;
    JumlahService = 0;
    
    sumArrival=[];
    sumDeparture=[];
    sumArrivalTime = 0;
    sumServiceTime = 0;
    
    timeServiceEnds = 0;
    
    disp('---------------------------------')
    disp('  Arrival & Departure Details')
    disp('---------------------------------')

    for i=1:totalCustomers
        
        %find the Inter-arrival Time from table
         if (RL0(1)<=rnInterArrivalTimes(i) & rnInterArrivalTimes(i)<=RU0(1))
          iatA = 1;
          JumlahArrival = iatA;
          sumArrivalTime = sumArrivalTime + iatA;      %arrival time = previous arrival time + interarrival time;            
         elseif(RL0(2)<=rnInterArrivalTimes(i)& rnInterArrivalTimes(i)<=RU0(2))
          iatA = 2;
          JumlahArrival = iatA;
          sumArrivalTime = sumArrivalTime + iatA;
         elseif(RL0(3)<=rnInterArrivalTimes(i)& rnInterArrivalTimes(i)<=RU0(3))
          iatA = 3;
          JumlahArrival = iatA;
          sumArrivalTime = sumArrivalTime + iatA;     
         elseif(RL0(4)<=rnInterArrivalTimes(i)& rnInterArrivalTimes(i)<=RU0(4))
          iatA = 4;
          JumlahArrival = iatA;
          sumArrivalTime = sumArrivalTime + iatA;
         elseif(RL0(5)<=rnInterArrivalTimes(i)& rnInterArrivalTimes(i)<=RU0(5))
          iatA = 5;
          JumlahArrival = iatA;
          sumArrivalTime = sumArrivalTime + iatA;  
         else
             JumlahArrival = 0;
             sumArrivalTime = 0;
         end
         
         

        if (mod(i,2) == 0) %even number 2,4,6 kiosk2                  rnInterArrivalTimes(i)%2 == 0
            %smtg "rnServiceTimes" with range of interarival time "RL2"< x <"RU2" (done)
            %departs time aka service time of kios RL1&RU1 RL2&RU2
            
            if (RL2(1)<=rnServiceTimes(i) & rnServiceTimes(i)<=RU2(1))
            iat = 2;
            JumlahService = iat;
            %arrival time = previous arrival time + interarrival time;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL2(2)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU2(2))
            iat = 3;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL2(3)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU2(3))
            iat = 4;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL2(4)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU2(4))
            iat = 5;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL2(5)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU2(5))
            iat = 6;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;

            end
            disp('Kiosk 2')
            
        else %odd numb 1,3,5 kiosk1
            if (RL1(1)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU1(1))
            iat = 1;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL1(2)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU1(2))
            iat = 2;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL1(3)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU1(3))
            iat = 3;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL1(4)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU1(4))
            iat = 4;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
            
            elseif(RL1(5)<=rnServiceTimes(i)& rnServiceTimes(i)<=RU1(5))
            iat = 5;
            JumlahService = iat;
            sumServiceTime = sumServiceTime + iat;
  
            end
            disp('Kiosk 1')
        end
        
        arrivalTime(i) = JumlahArrival; %Store inter arrival time into array
        serviceTime(i) = JumlahService; %Store service time into array
        sumArrival(i) = sumArrivalTime;
        sumDeparture(i) = sumServiceTime;
        
        timeServiceEnds = sumArrivalTime + JumlahService;
        
        
        fprintf('Patient %1.0f arrives at minute %1.0f \n',i,sumArrivalTime)
        fprintf('Patient %1.0f depart at minute %1.0f.\n\n',i,timeServiceEnds)
    end
    
            