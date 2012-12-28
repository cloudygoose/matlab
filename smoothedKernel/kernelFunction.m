function ou = kernelFunction(data, len, h, x)
    sum = 0;
    for i=1:len
        sum = sum + normpdf((x - data(i, 1)) / h, 0, 1);
    end
    co = zeros(len, 1);
    for i=1:len
        co(i) = normpdf((x - data(i, 1)) / h, 0, 1) / sum;
    end
    ou = (data(1:len, 2))' * co;
end
