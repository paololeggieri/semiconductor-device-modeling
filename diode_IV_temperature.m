% diode_IV_temperature.m
% Curva I-V di un diodo (Shockley) per diverse temperature

clear; clc; close all;

% Costanti fisiche
q = 1.602176634e-19;   % [C]
k = 1.380649e-23;      % [J/K]

% Parametri del diodo (esempio)
Is = 1e-12;            % [A]
n  = 1.8;              % ideality factor [-]

% Tensioni
V = linspace(0, 0.8, 500);

% Temperature da confrontare
T_list = [250 300 350];   % [K]

% Figura in scala log (più leggibile)
figure; hold on; grid on;

for T = T_list
    Vt = k*T/q;                       % tensione termica
    I  = Is * (exp(V./(n*Vt)) - 1);   % Shockley
    semilogy(V, abs(I), 'LineWidth', 2);
end

xlabel('V (Volt)');
ylabel('|I| (Ampere) - scala log');
title('Diodo ideale: effetto della temperatura (Shockley)');
legend('T = 250 K', 'T = 300 K', 'T = 350 K', 'Location', 'northwest');
