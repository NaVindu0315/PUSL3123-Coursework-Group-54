%loading the dataset
load fisheriris;

%shuffeling and dividing  the dataset set to test and train

%to get the no of rows 
rows_count = size(meas,1);
%to shuffle
rng("shuffle");
sfld_meas= meas(randperm(size(meas,1)),:);