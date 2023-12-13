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


% Convert species labels to numerical values for neural network
new_training_targets = zeros(3, length(trainging_data));
new_testing_targets = zeros(3, length(testing_data));
for i = 1:length(trainging_data)
    switch species{i}
        case 'setosa'
            new_training_targets(1, i) = 1;
        case 'versicolor'
            new_training_targets(2, i) = 1;
        case 'virginica'
            new_training_targets(3, i) = 1;
    end
end
for i = 1:length(testing_data)
    switch species{training_count+i}
        case 'setosa'
            new_testing_targets(1, i) = 1;
        case 'versicolor'
            new_testing_targets(2, i) = 1;
        case 'virginica'
            new_testing_targets(3, i) = 1;
    end
end



%end
hidden_layer_size1 =10;
nett = feedforwardnet(hidden_layer_size1);
%training the nn
nett=train(nett,trainging_data,new_training_targets);


