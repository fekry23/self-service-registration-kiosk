function output = DisplayStatistics(arrivalTime,serviceTime,totalCustomers,ArrivalArray,ServiceBegins1,ServiceBegins2,ServiceEnds1,ServiceEnds2,TimeSpend1,TimeSpend2,WaitingTime1,WaitingTime2);
    
    serviceTimeK1 = [];
    serviceTimeK2 = [];
    customerCounterK1 = 0;
    customerCounterK2 = 0;
    interArrivalTimeK1 = 0;
    interArrivalTimeK2 = 0;
    WaitingCounterK1 = 0;
    WaitingCounterK2 = 0;
    
    for i=1:totalCustomers
        if(mod(i,2) == 0) %Kiosk 1
            serviceTimeK1(i) = serviceTime(i);
            customerCounterK1 = customerCounterK1 + 1;
            interArrivalTimeK1 = interArrivalTimeK1 + arrivalTime(i);
                WaitingCounterK1 = WaitingCounterK1 + WaitingTime1; %Count how many customers waited in queue

        else %Kiosk 2
            serviceTimeK2(i) = serviceTime(i);
            customerCounterK2 = customerCounterK1 + 2;
            interArrivalTimeK2 = interArrivalTimeK2 + arrivalTime(i);

                WaitingCounterK2 = WaitingCounterK2 + WaitingTime2; %Count how many customers waited in queue

        end     
    end
    
    fprintf('\n')
    disp('                             Result Evaluation - Counter 1')
    disp('---------------------------------------------------------------------------------------------')
    fprintf('Average Service Time : %4.2f \n',sum(serviceTimeK1)/totalCustomers)   %Avg service time = sum of service time / total customers 
    fprintf('Average Waiting Time : %4.2f \n', sum(WaitingTime1)/totalCustomers) %Avg waiting time = sum of waiting time / total customers
    fprintf('Average Interarrival Time : %4.2f \n', sum(arrivalTime)/totalCustomers-1) %Avg inter-arrival time = Sum of inter-arrival time / (total customer-1)
    fprintf('Average Time spent in the registration system : %4.2f \n',sum(TimeSpend1)/totalCustomers) %Avg time spent = sum of time spent in the system / total customers
    fprintf('Probability that a customer has to wait in the queue : %4.2f \n',sum(WaitingCounterK1)/totalCustomers) 
    disp('---------------------------------------------------------------------------------------------')  
    
    fprintf('\n')
    disp('                             Result Evaluation - Counter 2')
    disp('---------------------------------------------------------------------------------------------')
    fprintf('Average Service Time : %4.2f \n',sum(serviceTimeK2)/totalCustomers)     
    fprintf('Average Waiting Time : %4.2f \n', sum(WaitingTime2)/totalCustomers)
    fprintf('Average Interarrival Time : %4.2f \n', sum(arrivalTime)/totalCustomers-1) 
    fprintf('Average Time spent in the registration system : %4.2f \n',sum(TimeSpend2)/totalCustomers) 
    fprintf('Probability that a customer has to wait in the queue : %4.2f \n',sum(WaitingCounterK2)/totalCustomers) 
    disp('---------------------------------------------------------------------------------------------') 
    