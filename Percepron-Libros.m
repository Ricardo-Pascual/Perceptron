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
%Formulación del modelo
b = [-1 ; -1]
w1=[-b(1)/6; -b(1)/10]
w2=[-b(2)/1.5; -b(2)/-6]
W=[w1';w2']

%Valores de entrenamiento
lpux=[0.7 1.5];
lpuy=[3 5];
lmux=[2.0 0.9];
lmuy=[9 11];
ppux=[4.2 2.2];
ppuy=[0 1];
pmux=[3.6 4.5];
pmuy=[7 6];
%Continuar o finalizar el proceso de clasificación
respuesta=input('Desea ingresar datos | 1=Si / Otro=no | ');
while (respuesta==1)
  p1=input('Introduzca la coordenada en P1(x)');
  p2=input('Introduzca la coordenada en P2(y)');
  P=[p1;p2]
  a=hardlim(W*P+b)
    if(a==[1;1])
      disp('Es un libro pesado y muy usado')
      plot(p1,p2,'^k','MarkerFaceColor','k')
    else if(a==[0;1])
      disp('Es un libro pesado y poco usado')
      plot(p1,p2,'^k','MarkerFaceColor','w')
    else if(a==[0;0])
      disp('Es un libro ligero y poco usado')
      plot(p1,p2,'sk','MarkerFaceColor','w')
      else
        disp('Es un libro ligero y muy usado')
        plot(p1,p2,'sk','MarkerFaceColor','k')
    end
    end
    end
respuesta=input('Desea ingresar mas datos | 1=si / 2=no |');
end

%Cerramos la funcion de graficos
hold off
