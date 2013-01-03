max = 0;
maxi = 0;
maxj = 0;
for i=1:9
    for j=1:10-i
        sum=1-(1/2)^i-(1/2)^j+2*(1/2)^(i+j)
        if (sum > max) max = sum; maxi = i; maxj = j; end
    end
end
fprintf('%d %d %d\n', max, maxi, maxj);