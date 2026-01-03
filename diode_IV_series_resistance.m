% diode_IV_series_resistance.m
% Confronto tra diodo ideale e diodo con resistenza serie

clear; clc; close all;

% Costanti
q = 1.602176634e-19;
k = 1.380649e-23;

% Parametri del diodo
Is = 1e-12;     % [A]
n  = 1.8;
T  = 300;       % [K]
Rs = 5;         % resistenza serie [Ohm]

% Tensione applicata
V = linspace(0, 0.8, 500);
Vt = k*T/q;

% Diodo ideale
I_ideal = Is * (exp(V./(n*Vt)) - 1);

% Diodo con resistenza serie (approssimazione semplice)
I_real = Is * (exp((V - I_ideal*Rs)./(n*Vt)) - 1);

% Grafico
figure; hold on; grid on;
semilogy(V, abs(I_ideal), 'LineWidth', 2);
semilogy(V, abs(I_real), '--', 'LineWidth', 2);

xlabel('V (Volt)');
ylabel('|I| (Ampere) - scala log');
title('Diodo ideale vs diodo con resistenza serie');
legend('Diodo ideale', 'Diodo con Rs = 5 \Omega', 'Location', 'northwest');
