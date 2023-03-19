function output= myGeneratorChoices();
    
    condition = 1;
    
    printf('----------Types of Number Generator----------- \n\n'); 
    printf('1. Linear Congruential Generators (LCG) \n'); 
    printf('2. Uniform Distribution \n'); 
    printf('3. Exponential Distribution \n');   
    printf('---------------------------------------------- \n\n'); 
    
    while(condition == 1)
        choice = input('Your choice of number generator : '); 
        
        if( choice == 1 | choice == 2 | choice == 3)
            condition = 0; 
        else
            condition = 1;
            disp('Wrong Input! Please re-enter your choice');
            printf('\n');
        end
    end
    output = choice;