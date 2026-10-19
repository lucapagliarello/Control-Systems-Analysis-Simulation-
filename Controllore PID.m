% Parametri
mfi = 46;     % Margine di fase desiderato in gradi
wt = 4.1;       % Pulsazione angolare

% Definizione polinomio denominatore
den = [1 1 4]; % s^2 + s + 4

% Punto complesso s = j*wt
s = 1i * wt;

% Valutazione denominatore in s
D = polyval(den, s);

% Calcolo P(jwt)
num = 10;
Pjw = num / D;

% Modulo di P(jwt)
Modp = abs(Pjw);

% Argomento di P(jwt) in radianti
% Uso angle per la fase corretta tenendo conto del quadrante
Argp = angle(Pjw);

% Calcolo fase richiesta Fi in gradi
Fi = mfi - 180 - (Argp * 180/pi);

% Stampa risultati
fprintf('Modulo P(j%.2f) = %.4f\n', wt, Modp);
fprintf('Argomento P(j%.2f) in gradi = %.4f\n', Argp*180/pi);
fprintf('Fi = %.4f gradi\n', Fi);


