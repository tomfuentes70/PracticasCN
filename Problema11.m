x = -10:0.1:10;
A = trapmf(x,[-7 -5 6 9]);
C=max(A,1-A);
D=min(A,1-A);

figure
subplot(2,1,1)
plot(x,A,'LineWidth',3);
hold on
plot(x,1-A,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica del conjunto difuzo A y A~')
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off"; 
subplot(2,1,2)
plot(x,A,'LineWidth',3);
hold on
plot(x,1-A,'LineWidth',3);
hold on 
plot(x,C,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica de la operacion A U A~')
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off"; 

figure
subplot(2,1,1)
plot(x,A,'LineWidth',3);
hold on
plot(x,1-A,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica del conjunto difuzo A y A~')
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off"; 
subplot(2,1,2)
plot(x,A,'LineWidth',3);
hold on
plot(x,1-A,'LineWidth',3);
hold on 
plot(x,D,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica de la operacion A | A~')
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off";
               
