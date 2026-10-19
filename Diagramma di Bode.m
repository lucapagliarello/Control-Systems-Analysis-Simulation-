% Funzione di trasferimento F(s) = 25*(s+2) / [s*(s^2 + 0.6s + 9)]
num = 25 * [1 2];          % Numeratore: 25*(s+2)
den = conv([1 0], [1 0.6 9]);  % Denominatore: s*(s^2 + 0.6s + 9)

% Creazione sistema
F = tf(num, den);

% Diagramma di Bode
bode(F);
grid on;
title('Diagramma di Bode di F(s) = 25(s+2)/[s(s^2 + 0.6s + 9)]');
