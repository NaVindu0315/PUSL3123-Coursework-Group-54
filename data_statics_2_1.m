%fisherirs dataset is loaded

load fisheriris

% part B
N = size(meas,1);
disp(["No of Rows in meas : ",num2str(N)]);

N2 = size(species,1);
disp(["No of Rows in species : ",num2str(N2)]);

% part c 
disp(meas)
% to get the featurs from 1-4 
for x =1:4
    meas_data =  meas(:,x);
    %mean display
    meas_mean = mean(meas_data);
    disp(["column",num2str(x)]);
    disp(["mean : " , num2str(meas_mean) ]);

    %standard deviation
    meas_st_deviation = std(meas_data);
    disp(["column",num2str(x)]);
    disp(["standard deviation  : " , num2str(meas_st_deviation) ]);
    


end