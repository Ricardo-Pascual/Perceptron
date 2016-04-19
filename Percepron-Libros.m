%Limpiamos y eliminamos variables que puedan existir
clear all; close all; clc;
%Funcion para graficar en una sola ventana
hold on;

title('Clasificación de libros')
xlabel('Peso')
ylabel('Frecuencia')

%Creamos fronteras de deción
plot([0 6],[10 0],'k','LineWidth',2.5)
plot([0 4],[-6 12],'b','LineWidth',2.5)

%Cerramos la funcion de graficos
hold off
