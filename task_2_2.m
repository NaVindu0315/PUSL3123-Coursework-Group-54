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

%data
trainging_data = new_meas(1:training_count,:);
testing_data = new_meas(training_count+1:end,:);

%target
training_target = new_species(1:training_count);
testing_target = new_species(training_count+1:end);

%converting training and testing targets to numeric
% num_labels = grp2idx(new_species);
% new_training_target = ind2vec(num_labels(1:training_count));
% new_testing_target = ind2vec(num_labels(training_count+1:end));
%begin
% Convert species labels to numerical values for neural network
new_training_targets = zeros(3, length(trainging_data));
new_testing_targets = zeros(3, length(testing_data));
for i = 1:length(trainging_data)
    switch species{i}
        case 'setosa'
            training_targets(1, i) = 1;
        case 'versicolor'
            training_targets(2, i) = 1;
        case 'virginica'
            training_targets(3, i) = 1;
    end
end
for i = 1:length(testing_data)
    switch species{train_count+i}
        case 'setosa'
            testing_targets(1, i) = 1;
        case 'versicolor'
            testing_targets(2, i) = 1;
        case 'virginica'
            testing_targets(3, i) = 1;
    end
end



%end

% %creating the feedforward neural network
% hidden_layer_size = 10;
% nett = feedforwardnet(hidden_layer_size);
% %trainging the neural network
% nett = train(nett,trainging_data,training_target);
