%fisherirs dataset is loaded

load fisheriris

% part B
N = size(meas,1);
disp(["No of Rows in meas : ",num2str(N)]);

N2 = size(species,1);
disp(["No of Rows in species : ",num2str(N2)]);

% part c 
%disp(meas)
% to get the featurs from 1-4 
for x =1:4
    %assigning values

    meas_data =  meas(:,x);
    meas_mean = mean(meas_data);
    meas_st_deviation = std(meas_data);
    meas_max = max(meas_data);
    meas_min = min(meas_data);

    %displaying 

    %column 
    disp(["column",num2str(x)]);
    %mean display
    disp(["mean : " , num2str(meas_mean) ]);

    %standard deviation
    

    disp(["standard deviation  : " , num2str(meas_st_deviation) ]);
    
    %maximum
    disp(["column",num2str(x)]);
    disp(["Maximum  : " , num2str(meas_max) ]);

    %minimum 
    
    disp(["column",num2str(x)]);
    disp(["minimum  : " , num2str(meas_min) ]);

    %root mean square 
    meas_root_sq = sqrt(mean(meas_data.^2));
    disp(["column",num2str(x)]);
    disp(["root mean square   : " , num2str(meas_root_sq) ]);



end