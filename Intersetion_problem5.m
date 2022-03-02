function [y] = Intersetion_problem5(x,a,b,n)
subplot(311)
plot(x,a)
subplot(312)
plot(x,b)
if n==1
    y = min(a,b);
    subplot(313)
    plot(x,y)
    disp(y)
elseif n==2
    y = a.*b;
    subplot(313)
    plot(x,y)
    disp(y)
else
    y = max(0,a+b-1);
    subplot(313)
    plot(x,y)
    disp(y)
end
end
