function DisplayQueueSimulatorPartOne(totalCustomers,rnInterArrivalTimes,rnServiceTimes,arrivalTime,serviceTime);
    
    fprintf('\n')
    disp('                             SIMULATION TABLE - Part 1')
    disp('---------------------------------------------------------------------------------------------')
    disp('|  Patient  |  RN Inter Arrival Time  |  Inter-Arrival Time  |  RN Service  |  Service Time |')
    disp('---------------------------------------------------------------------------------------------')    
    for i=1:totalCustomers
        fprintf('|   %3.0f     |     %8.0f            |    %8.0f          |%8.0f      |%8.0f       |\n',[i,rnInterArrivalTimes(i),arrivalTime(i),rnServiceTimes(i),serviceTime(i)]')
        disp('---------------------------------------------------------------------------------------------')
    end
    fprintf('\n')