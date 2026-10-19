% Define K (you can modify this value)
K = 1; % Puoi modificare questo valore di K se necessario

% Numeratore: K(s+2)^2 = K(s^2 + 4s + 4) = Ks^2 + 4Ks + 4K
num = [K 4*K 4*K];

% Denominatore: s^2(s+4) = s^3 + 4s^2
den = [1 4 0 0]; % s^3 + 4s^2 + 0s + 0

% Define the transfer function system
sys = tf(num, den);

% Nyquist Diagram
nyquist(sys);
title('Diagramma di Nyquist di F(s) = K(s+2)^2/(s^2(s+4))');
grid on;