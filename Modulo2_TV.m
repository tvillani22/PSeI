
%% 2.1 ACTIVIDAD 1

clc
clear all
close all

% Creo arrays y matriz con doble for..
x = -pi:0.1:pi;
y = -2:0.1:2;
Z = ones(length(x),length(y));
for i = 1:length(x)
    for j = 1: length(y)
        Z(i,j) = sin(x(i));
    end
end
% O directamente..
%[X,Y] = meshgrid(x,y);
% Z = sin(X);

% Ploteo como superficie y como malla...
figure('units','centimeters','position',[5,5,24,10]);
subplot(1,2,1);
surf(Z);
subplot(1,2,2);
mesh(Z);

% Ploteo como imagen..
% no corrido en mi comp xq no tengo el toolbox
%imshow(Z,[]);
%colorbar; 



%% 2.2 ACTIVIDAD 2

clc
clear all
close all

% Armo matrices...
n = 20;
x = 0:1:256;
y = 0:1:256;
[X,Y] = meshgrid(x,y);
Z = 20*exp(-pi*((X-128).^2 + (Y-128).^2)./128); 

% Ploteo como imagen en escala de grises con 20 niveles..
% no corrido en mi comp xq no tengo el toolbox
% imshow(Z);
% colormap(gray(n));
% colorbar;

% Armo y grafico función y error de cuantización...
step = (max(Z(:)) - min(Z(:)))/n;
hstep = step/2;
lev = (min(Z(:))+hstep) : step : (max(Z(:))-hstep);

figure('units','centimeters','position',[5,5,24,10]);
for i = 1:length(lev)
   ax1 = subplot(1,2,1);
   plot([lev(i)-hstep,lev(i)+hstep],[lev(i),lev(i)])
   hold on
   ax2 = subplot(1,2,2);
   plot([lev(i)-hstep,lev(i)+hstep],[-hstep,+hstep])
   hold on
end

title(ax1,'Funcion de cuantizacion');
ylabel(ax1,'Salida');
xlabel(ax1,'Entrada');
title(ax2,'Error de cuantizacion');
ylabel(ax2,'Error');
xlabel(ax2,'Entrada');

% Alternativamente usando el comando quantiz()
%%