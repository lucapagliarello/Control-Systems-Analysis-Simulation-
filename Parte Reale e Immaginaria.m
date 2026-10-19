syms K w real   % Symbolic definition: K and w are real
s = 1j*w;       % Substitution s = jω

% Definition of the new transfer function F(s) = K(s+4)/(s(s^2+2s+4))
F = K*(s-2) / (s^2*(s+6));

% Separate into real and imaginary parts
ReF = simplify(real(F));
ImF = simplify(imag(F));

% Output
disp('Parte reale di F(jω):');
pretty(ReF)
disp('Parte immaginaria di F(jω):');
pretty(ImF)