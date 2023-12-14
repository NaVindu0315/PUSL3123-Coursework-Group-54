%loading kmeans
load kmeansdata;

%defining k values

k_values = [3,4,5];

%for evaluating matrices
evl_mtrcs = zeros(length(k_values),1);