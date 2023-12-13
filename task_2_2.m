load fisheriris;

%shuffling the dataset
rng("default");
indx = randperm(size(meas,1));
new_meas = meas(indx,:);
new_species = species(indx);

%trainging percantage
trn_p = 0.6;