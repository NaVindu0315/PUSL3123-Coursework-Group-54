%loading fisherirs
load fisheriris;
%q1
% Shuffling the dataset
rng("default");
indx = randperm(size(meas,1));
meas = meas(indx,:);
species = species(indx);
% Training percentage
trn_p = 0.6;

% Spliting dataset into test and train
training_count = floor(trn_p * size(meas,1));

% Data
training_data = meas(1:training_count,:);
testing_data = meas(training_count+1:end,:);

% Target
training_target = species(1:training_count);
testing_target = species(training_count+1:end);


% Converting species labels to numerical values for the neural network
species_labels = unique(species);
num_species = length(species_labels);

new_training_targets = zeros(num_species, length(training_target));

for i = 1:length(training_target)
    species_index = find(strcmp(species_labels, training_target{i}));
    new_training_targets(species_index, i) = 1;
end

%for testing target

new_testing_targets =  zeros(num_species,length(testing_target));
for i = 1:length(testing_target)
    species_index = find(strcmp(species_labels, testing_target{i}));
    new_testing_targets(species_index, i) = 1;
end
%q3
%defining k values for evaluating
k_values = [5,7];
for k = k_values
    %training the knn with k value
    

