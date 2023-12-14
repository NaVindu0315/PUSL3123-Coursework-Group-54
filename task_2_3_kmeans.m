%loading kmeans
load kmeansdata;

%defining k values

k_values = [3,4,5];

%for evaluating matrices
evl_mtrcs = zeros(length(k_values),1);

for i =1:length(k_values)
    %k means clustering for every k value
    k2 = k_values(i);
    