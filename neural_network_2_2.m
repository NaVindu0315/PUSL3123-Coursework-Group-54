%loading the dataset
load fisheriris;

%shuffeling the dataset
rng('shuffle');
dataset = dataset(randperm(size(dataset, 1)), :);