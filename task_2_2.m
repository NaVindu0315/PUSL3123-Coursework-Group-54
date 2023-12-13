
% Loading dataset
load fisheriris;

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

% Target
training_target = new_species(1:training_count);
testing_target = new_species(training_count+1:end);

% Convert species labels to numerical values for the neural network
species_labels = unique(new_species);
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

%this is the code for 2 part
%*******************************************%
% Creating the neural network
% hidden_layer_size1 = 10;
% nett = feedforwardnet(hidden_layer_size1);
% 
% % Training the neural network
% nett = train(nett, training_data', new_training_targets);
% 
% %testing the neural network
% predicted = nett(testing_data');
%*********************************************
%end of the 2 part 

% prt 3
%defining different hidden layer sizes 
hidden_layers = [10,15,20];
%defining no of exprmnt times
no_exps = 3;
%code for the part 3

%***************************************%
% for layer_size = hidden_layers
%     for exp = 1:no_exps
%         %nn
%         nett =feedforwardnet(layer_size);
%         %training 
%         nett = train(nett,training_data',new_training_targets);
%         %testing nn
%         predicted = nett(testing_data');
%         %displaying
%         view(nett);
% 
%     end
% end
%****************************************
%end of the part 3

%part 5
no_runs = 5;
%to get the accuaracy
accrcy = zeros(length(hidden_layers),no_exps,no_runs);

for layer_indx = 1:length(hidden_layers)
    layer_size = hidden_layers(layer_indx);

    for exp = 1:no_exps
        for run = 1:no_runs
            %creating the nn
            nett =


