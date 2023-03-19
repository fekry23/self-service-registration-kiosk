function output = start();
    
    %------Introduction Function------
    Intro();
    
    %------Get input from user------
    condition = 1;
    numberOfCustomersAllowed = 100;        
    
    while(condition == 1)
        totalCustomers = input('Number of patients in this simulation: ');
        
        if(totalCustomers >= 1 & totalCustomers <= 100)
            condition = 0;
        else
            condition = 1;
            disp('Wrong Input! Please re-enter your choice');
            printf('\n');
        end
    end
    
    printf('\n');
    generatorChoice=myGeneratorChoices();
    
    %------Generate Random Number------
    rnInterArrivalTimes = [];
    rnServiceTimes = [];
    [rnInterArrivalTimes,rnServiceTimes] = myRNgenerate(totalCustomers,generatorChoice);
    
    %------Display inter-arrival time table and service table------
    displayInterArrivalTable();
    displayServiceTimeCounterOne(); %#Kiosk 1 Service Time
    displayServiceTimeCounterTwo(); %#Kiosk 2 Service Time
    
    %------Display Arrival & Departure Details ------
    arrivalTime=[];
    serviceTime=[];
    sumArrival=[];
    sumDeparture=[];
    ArrivalArray=[];
    ServiceBegins1=[];
    ServiceBegins2=[];
    ServiceEnds1=[];
    ServiceEnds2=[];
    TimeSpend1=[];
    TimeSpend2=[];
    WaitingTime1=[];
    WaitingTime2=[];
    [arrivalTime,serviceTime,sumArrival,sumDeparture]=displayArrivalDepatureDetail(rnInterArrivalTimes,rnServiceTimes,totalCustomers);
    DisplayQueueSimulatorPartOne(totalCustomers,rnInterArrivalTimes,rnServiceTimes,arrivalTime,serviceTime);
    [ArrivalArray,ServiceBegins1,ServiceBegins2,ServiceEnds1,ServiceEnds2,TimeSpend1,TimeSpend2,WaitingTime1,WaitingTime2] = DisplayQueueSimulatorPartTwo(totalCustomers,sumArrival,sumDeparture,arrivalTime,serviceTime);
    DisplayStatistics(arrivalTime,serviceTime,totalCustomers,ArrivalArray,ServiceBegins1,ServiceBegins2,ServiceEnds1,ServiceEnds2,TimeSpend1,TimeSpend2,WaitingTime1,WaitingTime2);
