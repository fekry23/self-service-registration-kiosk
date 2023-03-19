function [ArrivalArray,ServiceBegins1,ServiceBegins2,ServiceEnds1,ServiceEnds2,TimeSpend1,TimeSpend2,WaitingTime1,WaitingTime2] = DisplayQueueSimulatorPartTwo(totalCustomers,sumArrival,sumDeparture,arrivalTime,serviceTime);
        
    %Arrival time
    ArrivalArray = [];
    tempArrival = 0;
    
    %Service time begins
    ServiceBegins1 = [];
    ServiceBegins2 = [];
    tempServiceBegins1 = 0;
    tempServiceBegins2 = 0;
    
    %Service time ends
    ServiceEnds1 = [];
    ServiceEnds2 = [];
    tempServiceEnds1 = 0;
    tempServiceEnds2 = 0;
    
    %Time spend in system
    TimeSpend1 = [];
    TimeSpend2 = [];
    tempTimeSpend1 = 0;
    tempTimeSpend2 = 0;
    
    %Waiting time
    WaitingTime1 = [];
    WaitingTime2 = [];
    tempWaitingTime1 = 0;
    tempWaitingTime2 = 0;    
    
    fprintf('\n')
    disp('                                              SIMULATION TABLE - Part 2')
    disp('---------------------------------------------------------------------------------------------------------------------------------')
    disp('|       |            |             Counter 1 (Kiosk 2)            |             Counter 2 (Kiosk 1)             |        |      |')
    disp('|       |            |                                            |                                             |        |      |')
    disp('|Patient|Arrival Time|--------------|--------------|--------------|------------- |---------------|--------------|Waiting | Time |')
    disp('|       |            | Service Time | Time Service | Time Service | Service Time | Time Service  | Time Service |  Time  | Spent|')
    disp('|       |            |              |     Begins   |     Ends     |              |    Begins     |     Ends     |        |      |')
    disp('---------------------------------------------------------------------------------------------------------------------------------')    
    
    for i=1:totalCustomers
        tempArrival = tempArrival + arrivalTime(i);        
        
        if(mod(i,2) == 0) %even , Kiosk 1
            %Kiosk 1 values
            if(tempServiceEnds1 < tempArrival) %If Arrival is larger than service ends
                tempServiceBegins1 = tempArrival; %Assign current arrival to service begin
            end       
            tempServiceEnds1 = tempServiceBegins1 + serviceTime(i); %Service end = Service begins + Service time
            tempTimeSpend1 = tempServiceEnds1 - tempArrival; %Time spend = Service ends - arrival time
            tempWaitingTime1 = tempServiceBegins1 - tempArrival; %Waiting time = Service begins - arrival time
            
            %Kiosk 1 print
            fprintf('| %3.0f   |   %3.0f      |     %3.0f      |     %3.0f      |     %3.0f      |     %3s      |     %3s       |     %3s      |  %3.0f   | %3.0f  |\n',[i,tempArrival,serviceTime(i),tempServiceBegins1,tempServiceEnds1,0,0,0,tempWaitingTime1,tempTimeSpend1]')
            disp('---------------------------------------------------------------------------------------------------------------------------------')
            
            tempServiceBegins1 = tempServiceBegins1 + serviceTime(i);  
        else %odd , Kiosk 2
            %Kiosk 2 values
            if(tempServiceEnds2 < tempArrival) %If Arrival is larger than service ends
                tempServiceBegins2 = tempArrival; %Assign current arrival to service begin
            end       
            tempServiceEnds2 = tempServiceBegins2 + serviceTime(i); %Service end = Service begins + Service time
            tempTimeSpend2 = tempServiceEnds2 - tempArrival; %Time spend = Service ends - arrival time
            tempWaitingTime2 = tempServiceBegins2 - tempArrival; %Waiting time = Service begins - arrival time
            
            %Kiosk 2 print
            fprintf('| %3.0f   |   %3.0f      |     %3s      |     %3s      |     %3s      |     %3.0f      |     %3.0f       |     %3.0f      |  %3.0f   | %3.0f  |\n',[i,tempArrival,0,0,0,serviceTime(i),tempServiceBegins2,tempServiceEnds2,tempWaitingTime2,tempTimeSpend2]')
            disp('---------------------------------------------------------------------------------------------------------------------------------') 
            
            tempServiceBegins2 = tempServiceBegins2 + serviceTime(i);  
        end
        
        %Assign to array
        ArrivalArray(i) = tempArrival;
        ServiceBegins1(i) = tempServiceBegins1;
        ServiceBegins2(i) = tempServiceBegins2;
        ServiceEnds1(i) = tempServiceEnds1;
        ServiceEnds2(i) = tempServiceEnds2;
        TimeSpend1(i) = tempTimeSpend1;
        TimeSpend2(i) = tempTimeSpend2;
        WaitingTime1(i) = tempWaitingTime1;
        WaitingTime2(i) = tempWaitingTime2;
        
    end
    fprintf('\n')