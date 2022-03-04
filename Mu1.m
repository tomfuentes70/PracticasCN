function [Mu1x] = Mu1(k,x,m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure
if k>1
b = 1;
a = 1/k;
c = m;
Mu1x = gbellmf(x,[a,b,c]);
legend('show')
plot(x,Mu1x)
hold on
else 
    disp("k debe ser mayor a 1")
end
end