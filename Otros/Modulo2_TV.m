%% 2.1 ACTIVIDAD 1

clc
clear all
close all

% Creo arrays y matriz con doble for..
x = -2:0.1:2;
y = -pi:0.1:pi;
[X,Y] = meshgrid(x,y);

% Con for anidado..
Z = ones(length(y),length(x));
for i = 1:length(y)
    for j = 1: length(x)
        Z(i,j) = sin(y(i));
    end
end
% O directamente..
%Z = sin(Y);

% Ploteo como superficie y como malla...
figure('units','centimeters','position',[5,5,24,10]);
subplot(1,2,1);
surf(X,Y,Z);
subplot(1,2,2);
mesh(X,Y,Z);

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

title(ax1,'Funcion de cuantización');
ylabel(ax1,'Salida');
xlabel(ax1,'Entrada');
title(ax2,'Error de cuantización');
ylabel(ax2,'Error');
xlabel(ax2,'Entrada');

% Alternativamente usando el comando quantiz()

%% ACTIVIDAD 3





%% ACTIVIDAD 4 

clc
close all
clear all

% Uso una funcion para leer la imagen y mostrar la info solicitada..
figure('position',[0 0 1200 620])
subplot(1,3,1)
[img, inf, cmap] = imag_();
subplot(1,3,2)
[img, inf, cmap] = imag_();
subplot(1,3,3)
[img, inf, cmap] = imag_();

% La funcion, en archivo aparte, es..
% function [img, info, colormap] = imag_()
% % Leo archivo y metadata..
%     [file,dir] = uigetfile('*.bmp;*.jpg;*.png; *.tif'); %filtro para archivos bmp, jpg y png
%     filename = [dir,file];
%     info = imfinfo(filename);
%     [img, colormap] = imread(filename);
% % Imprimo la informacion solicitada..
%     fprintf('Nombre de archivo: %s.\n', file)
%     fprintf('Tamano en pixeles: %d.\n', info.Width * info.Height)
%     fprintf('Profundidad de bits: %d.\n', info.BitDepth)
%     fprintf('Tipo de color: %s.\n', info.ColorType)
%     fprintf('Tipo de dato: %s.\n', class(img))
% % Muestro la imagen..
%     imshow(img,[])
% end

%%