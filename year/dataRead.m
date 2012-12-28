filename = '.\year.out';
fid  = fopen(filename, 'rt');
data = zeros(1000, 2);
len = 1;
for i=1855:2011
   xs = fscanf(fid, '%d', [1 2]);
   data(len,1) = xs(1);
   data(len,2) = xs(2);
   len = len + 1;
end
len = len - 1;
data = data(1:len, 1:2);
