function [meanX,stdX]=getMeanStdNoisyData(X,edges)

%assumes X is a matrix and you want mean for each column
%edges is the variable histcounts needs

[M,N]=size(X);
ncounts=zeros(length(edges)-1,N);

for n=1:N
    [ncounts(:,n),~]=histcounts(X(:,n),edges);
end

ncounts(ncounts<2)=0;
Xmax=nan(1,N);

for n=1:N
    maxX=find(ncounts(:,n)>0,1,'last');
    if ~isempty(maxX)
        Xmax(n)=edges(maxX);
        X(X(:,n)>Xmax(n),n)=nan;
    end
    clear maxX
end

meanX=nanmean(X);
stdX=nanstd(X);


end