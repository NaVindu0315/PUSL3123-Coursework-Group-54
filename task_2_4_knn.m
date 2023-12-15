%loading fisherirs
load fisherirs;
% Shuffling the dataset
rng("default");
indx = randperm(size(meas,1));
new_meas = meas(indx,:);
new_species = species(indx);
% Training percentage
trn_p = 0.6;

% Spliting dataset into test and train
training_count = floor(trn_p * size(new_meas,1));

% Data
training_data = new_meas(1:training_count,:);
testing_data = new_meas(training_count+1:end,:);
