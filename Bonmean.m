function y = bonmean(x,p,q)

%calculates Bonferroni mean

n=size(x,2);
m=size(x,1);
for j=1:m
    for i=1:n
        xn=x(j,[1:i-1,i+1:end]); 
        tmp1(i)=sum(xn.^q,2)/(n-1);
    end
    y(j) = (sum((x(j,:).^p).*tmp1,2)/(n)).^(1/(p+q));
end
y=y';