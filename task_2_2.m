load fisheriris;

%shuffling the dataset
rng("default");
indx = randperm(size(meas,1));
