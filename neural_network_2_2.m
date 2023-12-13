%loading the dataset
load fisheriris;

%shuffeling and dividing  the dataset set to test and train
[training_ds,train_trgt,test_ds,test_trgt] = split_data(meas,species,0.6);
