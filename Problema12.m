x = -10:0.1:10;
A = trapmf(x,[-9 -8 -1 3]);
B = trapmf(x,[-5 -3 4 5]);
C = trapmf(x,[2 3 7 9]);
a1=max(A, min(B, C));
a2=min(max(A, B), max(A, C));
b1=1-min(A, B);
b2=max(1-A, 1-B);
c1=1-max(A, B);
c2=min(1-A, 1-B);

figure
plot(x,A,'LineWidth',3);
hold on
plot(x,B,'LineWidth',3);
hold on 
plot(x,C,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica de los conjuntos difusos A, B, C')
% h = gca;                            
% h.XAxisLocation = "origin";          
% h.YAxisLocation = "origin";         
% h.Box = "off"; 

Graficas(x, a1, a2, "Grafica de A U (B | C)", "Grafica de (A U B) | (A U C)");
Graficas(x, b1, b2, "Grafica de (A | B)'", "Grafica de A' U B'");
Graficas(x, c1, c2, "Grafica de (A U B)'", "Grafica de A' | B'");

