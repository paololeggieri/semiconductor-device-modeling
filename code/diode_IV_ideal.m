% diode_IV_ideal.m
% Curva I-V di un diodo: modello di Shockley (ideale)

clear; clc; close all;

% Costanti
q = 1.602176634e-19;   % carica elettrone [C]
k = 1.380649e-23;      % costante di Boltzmann [J/K]

% Parametri del diodo (valori "ragionevoli" per un esempio)
Is = 1e-12;            % corrente di saturazione [A]
n  = 1.8;              % ideality factor [-]
T  = 300;              % temperatura [K] (circa 27°C)

% Tensione
V = linspace(0, 0.8, 500);   % da 0 a 0.8 V

% Tensione termica
Vt = k*T/q;

% Equazione di Shockley
I = Is * (exp(V./(n*Vt)) - 1);

% Grafico
figure;
plot(V, I, 'LineWidth', 2);
grid on;
xlabel('V (Volt)');
ylabel('I (Ampere)');
title('Diodo ideale: curva I–V (Shockley)');

% Grafico in scala log (utile perché I cresce tantissimo)
figure;
semilogy(V, abs(I), 'LineWidth', 2);
grid on;
xlabel('V (Volt)');
ylabel('|I| (Ampere) - scala log');
title('Diodo ideale: curva I–V (scala log)');