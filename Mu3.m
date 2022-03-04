function [Mu3x] = Mu3(x,m)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
figure
i = size(x);
for a=1:i
    Mu3x(a) = 0;
    if x == m
        Mu3x(a) =1;
    end

end
plot(x,Mu3x)
end