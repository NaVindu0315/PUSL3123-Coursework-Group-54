%loading the dataset
load fisheriris;

%shuffeling the dataset
rng('shuffle');
shuffled_meas = meas(randperm(size(meas, 1)), :);