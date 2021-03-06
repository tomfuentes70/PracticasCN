function [C] = UnionesE6(x,y,A,B,i,p)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Asigma = std(A);
Bsigma = std(B);
Amean = mean(A);
Bmean = mean(B);
fA = gbellmf(A,[Asigma,1,Amean]);
fB = gbellmf(B,[Bsigma,1,Bmean]);
subplot(2,2,1)
plot(x,y)
hold on
plot(A,fA)
plot(B,fB)
hold off

if i==1
    Af = max(fA(:),y(:));
    Bf = max(fB(:),y(:));
    Cf = max(Af(:),Bf(:));
    Csigma = std(Cf);
    Cmean = mean(Cf);
    C = gbellmf(Cf,[Csigma,1,Cmean]);
    subplot(2,2,2)
    plot(A,fA)
    hold on
    plot(B,fB)
    plot(x,y)
    plot(x,C)
elseif i==2
    for n=1:100
        SumaAlg(n) = fA(n)+fB(n)-fA(n)*fB(n);
    end
    SSigma = std(SumaAlg);
    Smean = mean(SumaAlg);
    C = gbellmf(SumaAlg,[SSigma,1,Smean]);
    subplot(2,2,3)
    plot(A,fA)
    hold on
    plot(B,fB)
    plot(x,y)
    plot(x,C)
else
    for n=1:100
        SumAcot(n) = fA(n)+fB(n)+y(n)+p*(fA(n)*y(n)*fB(n));
    end
    SumAcot = min(1,SumAcot);
    SumAcotSigma = std(SumAcot);
    Smean = mean(SumAcot);
    C = gbellmf(SumAcot,[SumAcotSigma,1,Smean]);
    subplot(2,2,4)
    plot(A,fA)
    hold on
    plot(B,fB)
    plot(x,y)
    plot(x,C)
end


end