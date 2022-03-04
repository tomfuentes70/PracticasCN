function Graficas(X, W1, W2, tituloW1, tituloW2)
figure
subplot(2,1,1)
plot(X,W1,'LineWidth',3);
grid on 
title(tituloW1)
axis([-12,11,-0.1,1.1])
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off";                       % apagar caja
subplot(2,1,2)
plot(X,W2,'LineWidth',3);
grid on
title(tituloW2)
axis([-12,11,-0.1,1.1])
h = gca;                             % ejes actuales
h.XAxisLocation = "origin";          % eje en el origen
h.YAxisLocation = "origin";          % eje en el origen
h.Box = "off";                       % apagar caja