function out = simLPBon(center, data,p,m1,q)

out = zeros(size(center, 1), size(data, 1));

% fill the output matrix
Ideal=ones(size(data, 1), 1)*center;

[n,m]=size(data);

for i=1:n
    for j=1:m
        simM(i,j)=1-abs(data(i,j)^p-Ideal(i,j)^p);
    end
end

totsim=Bonmean(simM,m1,q);

out=totsim;
    

