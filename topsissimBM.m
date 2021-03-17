function [cc,PISB,NISB]=topsissimBM(data,p,m1,q,crit)
x=data;
[m,n]=size(x);
a=zeros(m,n);
%Normalization:
%a=normalization2(x);
a=normalize(x,'range'); %matlab's own normalization function
%Positive and negative ideal solutions:
PIS=zeros(1,n);
NIS=zeros(1,n);
for j=1:n
    if crit(j)==1
        PIS(j)=max(a(:,j));
        NIS(j)=min(a(:,j));
    else
        PIS(j)=min(a(:,j));
        NIS(j)=max(a(:,j));
    end
end

%Similarities to PIS and NIS
 PISB=zeros(1,m);
 NISB=zeros(1,m);
 PISB=simLPBon(PIS,a,p,m1,q)';
 NISB=simLPBon(NIS,a,p,m1,q)';

%Closeness coefficient: 
 cc=zeros(1,m);
 for i=1:m
     cc(i)=PISB(i)/(PISB(i)+NISB(i));
 end
