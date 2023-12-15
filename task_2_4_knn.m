%loading fisherirs
load fisherirs;
% Shuffling the dataset
rng("default");
indx = randperm(size(meas,1));