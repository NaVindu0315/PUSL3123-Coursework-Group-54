%loading the dataset
load fisheriris;

%shuffeling and dividing  the dataset set to test and train
%renaming
new_data = meas;
label_data = grp2idx(species);

%to shuffle
rng(1); 
count = size(new_data, 1);
i=randperm(count);
new_data = new_data(i,:);
label_data = label_data(i);

%dividing data for training and testing
trn_prnctg = 0.6;
