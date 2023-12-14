%loading kmeans
load kmeansdata;

%assing data to a variable 
new_data = X;
%defining k values

k_values = [3,4,5];

%part 2 begins
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %for evaluating matrices
% evl_mtrcs = zeros(length(k_values),1);
% 
% for i =1:length(k_values)
%     %k means clustering for every k value
%     k2 = k_values(i);
%     [indx,c] = kmeans(new_data,k2);
%     %evaluating the clutering perfomance
%     evl_mtrcs(i) = sum(sum(new_data-c(indx,:)));
%     %visualizing 
%     %************************
% 
    % % figure;
    % % gscatter(new_data(:,1),new_data(:,2),indx);
    % % hold on;
    % % %ploting centroids
    % % scatter(c(:,1),c(:,2),100,'k','filled');
    % % title("cluster results");
    % % legend('cluser1','cluster2','cluster3');
    % % hold off;
    % % ***************************
%     if size(new_data,2)<= 3
%         figure;
% 
%         scatter3(new_data(:,1),new_data(:,2),new_data(:,3),[],indx,'filled');
%         title(["k means clustering with k = ",num2str(k2)]);
%          xlabel('Feature 1');
%         ylabel('Feature 2');
%         zlabel('Feature 3');
%         drawnow;
% 
%     end
% 
% end
% 
% [optimal_value, indx_optimal] = min(evl_mtrcs);
% optimal_k = k_values(indx_optimal);
% fprintf('Optimal number of clusters: K = %d\n', optimal_k);
% part 2 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%part 3

%initializing variables for mean silhouette score
mean_sil_score = zeros(length(k_values),1);

for i =1:length(k_values)
    %k means clustring for every k value
    k2 = k_values(i);
    [indx,centroids] = kmeans(new_data,k2);

    %calculating sihoutte values
    silht_values = silhouette(new_data,indx);
    %calculating 
    mean_sil_score(i) = mean(silht_values);
    %ploting silht values for each cluster 
  
        figure;
        
        silhouette(new_data,indx);
        
        title (["silhouette plot for k :",num2str(k2)]);
        xlabel('Silhouette value');
        ylabel('Cluster');

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %q3 end

  %q4 begin
  %ploting clustrs
  figure;
  gscatter(new_data(:,1),new_data(:,2),indx);
  hold on;
        
   
end
