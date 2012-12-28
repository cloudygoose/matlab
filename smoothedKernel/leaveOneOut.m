function ou = leaveOneOut(h)
    [data, len] = dataRead();
    ou = 0;
    for i = 1:len
        [value, sum] = kernelFunction(data, len, h, data(i, 1));
        ou = ou + ((data(i, 2) - value) / (1 - normpdf(0, 0, 1) / sum)) ^ 2;
    end
    ou = ou / len;
end