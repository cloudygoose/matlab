function plotKernel(h)
    [data, len] = dataRead();
    figure;
    x = linspace(1850, 2016, 1000);
    y = zeros(1,1000);
    for i=1:1000
        y(1,i) = kernelFunction(data, len, h, x(i));
    end
    plot(x, y);
end