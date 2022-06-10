% Mainfiles purpose is to show how to use generalized TOPSIS method
% that uses Bonferroni mean and similarity which was introduced in

% Luukka,P., Collan, M., Bonferroni mean based similarity based TOPSIS, 
% 2016 IEEE International Conference on Fuzzy Systems (FUZZ-IEEE), pp.
% 704-709
% https://ieeexplore.ieee.org/abstract/document/7737756


%First let create artificial data of ten alternatives and five criteria:
c=10;
data=c*randn(10,5);
%Define parameters p for similarity, m and q for Bonferroni mean e.g. 
p=2; m=3; q=3;
%See more information about these from the proceedings.

%Define whether criteria is benefit criteria or cost criteria in crit
%vector 1=benefit, 2=cost.
crit=[1 1 1 2 1]; %in this example fourth would be cost criteria and others benefit

%Weights for the criteria, now just set to one (no weighting)
we=[1,1,1,1,1];

[cc,PISB,NISB]=topsissimBM(data,p,m,q,crit,we)

%For output of the function you get:
%cc = closeness coefficient values for ten alternatives
%PISB = similarity to positive ideal solution
%NISB = similarity to negative ideal solution 

%You can get the ordering of the alternatives by sorting CC to descending order
[Y,I]=sort(cc,'descend');

%Order of the attributes:
Order=I'
