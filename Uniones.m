function [C,C1,C2] = Uniones(A,B,x)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
subplot(2,2,1)
for n=1:5
 if A(n)>=B(n)
     C(n) = A(n);
 elseif B(n)>A(n)
     C(n) = B(n);
 elseif B(n) == 0 && A(n) == 0
     C(n)=0;

 end
 C
end
scatter(x,A);
hold on
scatter(x,B);
scatter(x,C);
hold off
legend('A','B','C')
subplot(2,2,2)
for n=1:5
    C1(n) = A(n)+B(n)-A(n)*B(n);

end
scatter(x,A)
hold on
scatter(x,B)
scatter(x,C1)
hold off
legend('A','B','C')
subplot(2,2,3)
p =5;
for n=1:5
    C2(n) = A(n)+B(n)+(A(n)*B(n)*p);
end
scatter(x,A)
hold on
scatter(x,B)
scatter(x,min(C,1))
legend('A','B','C')
hold off
end