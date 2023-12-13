load fisheriris;

%shuffling the dataset
rng("default");
indx = randperm(size(meas,1));
new_meas = meas(indx,:);
new_species = species(indx);

%trainging percantage
trn_p = 0.6;
%splitting dataset to test and train
training_count =floor(trn_p*size(new_meas,1));