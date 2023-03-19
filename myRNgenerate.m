function [rnInterArrivalTimes,rnServiceTimes] = myRNgenerate(totalCustomers,generatorChoice);
    
    %------Initialize arrays------
    rnInterArrivalTimes = []; %RN for inter-arrival times
    rnServiceTimes = []; %RN for service times
    
    %#------ LCG ------#  
    if (generatorChoice == 1)
        
        %------Initialize random variables for Inter-Arrival times ------         
        x0 = rand()*10; %Xn-1
        rnInterArrivalTimes(2) = round(x0); %seed
        a = rand()*10; 
        c = rand()*10; 
        m = 100;
        
        for i = 3:totalCustomers
            rnInterArrivalTimes(i) =  round((mod(a*x0+c,m))); %Formula = a(Xn-1 + c) * mod(m)
            x0 = rnInterArrivalTimes(i); 
        end %#END of for loop#
        
        %------Initialize random variables for Service Times------     
        x0 = rand()*10; %Xn-1
        rnServiceTimes(1) = round(x0); %seed
        a = rand()*10; 
        c = rand()*10; 
        
        for i = 2:totalCustomers
            rnServiceTimes(i) =  round((mod(a*x0+c,m))); %Formula = a(Xn-1 + c) * mod(m)
            x0 = rnServiceTimes(i); 
        end %#END of for loop#   
        
        %#------ Uniform Distribution ------#  
    elseif (generatorChoice == 2)
        
        %------Generate random numbers using Uniform Distribution formula------
        rnServiceTimes(1) = round(1+(100-1)*rand); %First service time array
        for i=2:totalCustomers
            rnInterArrivalTimes(i) = round(1+(100-1)*rand); %Formula = a+(b-a)Ri
            rnServiceTimes(i) = round(1+(100-1)*rand);
        end %#END of for loop#
        
        %#------ Exponential Distribution ------#
    elseif (generatorChoice ==3)
        
        %------Initialize variables------  
        x = [];
        x(2) = round((-1*log(1-rand(1,100))*10));
        rnServiceTimes(1) = round((-1*log(1-rand(1,100))*10));
        for i = 2:totalCustomers
            rnInterArrivalTimes(i) = round((-1*log(1-rand(1,100))*10)); %Formula = -1*ln(1-Ri)
            rnServiceTimes(i) = round((-1*log(1-rand(1,100))*10));
        end %#END of for loop#
        
    end %#END of if-else loop#
    
    %------Display------
    disp('Inter-Arrival Times : ',rnInterArrivalTimes);
    disp('Service Times : ', rnServiceTimes);    
    
    