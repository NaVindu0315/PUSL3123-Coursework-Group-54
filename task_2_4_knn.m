%loading fisherirs
load fisheriris;
%q1


%shuffleing the dataset 
rng("default");
shfld_indc = randperm(size(meas,1));
%split prcntg
trn_p =0.6;
tst_p =0.4;

total_records = numel(shfld_indc);
no_trainining_records = floor(trn_p*total_records);
no_testing_records = total_records - no_trainining_records;

%spltting dta
training_data = meas(shfld_indc(1:no_trainining_records),:);
testing_data =meas(shfld_indc(no_trainining_records+1:end),:);

training_target = species(shfld_indc(1:no_trainining_records));
testing_target = species(shfld_indc(no_trainining_records+1:end));



%q3
%defining k values for evaluating
k_values = [5,7];
for k = k_values
    %training the knn with k value
    knn_classifer = fitcknn(training_data,training_target,'NumNeighbors',k);

    prdctd_labels = predict(knn_classifer,testing_data);
    %evaluating accuaracy
    accrcy = sum(strcmp(prdctd_labels,testing_target))/numel(testing_target);
    %displaying the accuarcy for k value
    fprintf("accuracy for k = %d : %.2f%%\n ",k,accrcy*100);

    %q4
    %confussion matrix
    
end
    



