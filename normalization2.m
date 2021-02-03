function data_v=normalization2(data)
%scaling data between [0,1]
[m,n]=size(data);
data_v=data;
mins_v = min(data_v);
Ones = ones(size(data_v));
data_v = data_v+Ones*diag(abs(mins_v));
maxs_v = max(data_v);
data_v = data_v*diag(maxs_v.^(-1));
