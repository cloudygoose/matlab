function outt = GeneratePointsOnSphere(nPoints, nDim)

%# create normally distributed variables
points = randn(nPoints,nDim);

%# normalize by dividing by the norm (=square root of sum(points.^2,2) )
points = bsxfun(@rdivide,points,sqrt(sum(points.^2,2)));

%# initialize the array
dist = zeros(1, (nPoints * (nPoints - 1)) / 2);

%# calculate the length array dist
now = 0;
for column = 2 : 1 : nPoints
  for row = 1 : 1 : (column - 1)
      tmp = 0;
      for k = 1 : 1 : nDim
          tmp = tmp + (points(column, k) - points(row, k))^2;
      end
      now = now + 1;
      dist(now) = sqrt(tmp);    
  end
end

outt = dist;

%histogram and display it
hist(dist, 30);