x = round(100*(rand([1 100])));
x = sort(x,2,"ascend");
a = mean(x);
l  = size(x);
sigma = std(x);
y = gbellmf(x,[sigma,1,a]);
A = linspace(-5,25,l(2));
B = linspace(70,100,l(2));
UnionesE6(x,y,A,B)