function ou = kernelFunction(data, len, h, x)
    sum = 0;
    for i=1:len
        sum = sum + normrnd((x - data(i, 1)) / h, 1);
    end
    co = zeros(len, 1);
    for i=1:len
        co(i) = normrnd((x - data(i, 1)) / h, 1) / sum;
    end
    ou = (data(1:len, 2))' * co;
end
