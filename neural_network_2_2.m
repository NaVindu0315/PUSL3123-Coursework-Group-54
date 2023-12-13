%loading the dataset
load fisheriris;

%shuffeling and dividing  the dataset set to test and train
%renaming
new_data = meas;
label_data = grp2idx(species);

%to shuffle
rng(1); 
i = randperm(size(new_data));
new_data = new_data(i,:);
label_data = 
