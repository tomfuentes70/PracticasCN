function [Mu2x] = Mu2(x,k,a)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
figure
Mu2x = (k*((x-a).^2))./(1+k*((x-a).^2));
i = find(x<=a);
Mu2x(i) = 0;
plot(x,Mu2x)
hold on
end
    