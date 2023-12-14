%loading kmeans
load kmeansdata;

%assing data to a variable 
new_data = X;
%defining k values

k_values = [3,4,5];

%for evaluating matrices
evl_mtrcs = zeros(length(k_values),1);

for i =1:length(k_values)
    %k means clustering for every k value
    k2 = k_values(i);
    [indx,c] = kmeans(new_data,k2);
    %evaluating the clutering perfomance
    evl_mtrcs(i) = sum(sum(new_data-c(indx,:)));
    %visualizing 
    %************************
    
    % figure;
    % gscatter(new_data(:,1),new_data(:,2),indx);
    % hold on;
    % %ploting centroids
    % scatter(c(:,1),c(:,2),100,'k','filled');
    % title("cluster results");
    % legend('cluser1','cluster2','cluster3');
    % hold off;
    %***************************
    if size(new_data,2)<= 3
        figure;
        scatter3(new_data(:,1),new_data(:,2),new_data(:,3),[],indx,'filled');
        title(["k means clustering with k = ",num2str(k2)]);
         xlabel('Feature 1');
        ylabel('Feature 2');
        zlabel('Feature 3');

    end

end