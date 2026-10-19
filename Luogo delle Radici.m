% Define the transfer function F = K*(s-2) / (s^2*(s+6))

% Numerator: K(s-2) => [K -2K]
% We represent the numerator for K=1 for the tf function, then account for K later if needed.
num = -[1 -2]; 

% Denominator: s^2(s+6) = s^3 + 6s^2 + 0s + 0
den = [1 6 0 0]; 

% Transfer function
sys = tf(num, den);

% Calculate poles and zeros
p = pole(sys);
z = zero(sys);

% Number of poles and zeros
n = length(p);
m = length(z);

% Calculate the centroid of the asymptotes (sigma)
sigma = (sum(real(p)) - sum(real(z))) / (n - m);

% Number of asymptotes
num_asintoti = n - m;

% Angles of asymptotes in degrees
k = 0:(num_asintoti-1);
theta = (2*k + 1)*180/num_asintoti;

% Plot the root locus
figure;
rlocus(sys);
hold on;

% Plot the centroid of the asymptotes
plot(real(sigma), 0, 'rx', 'MarkerSize', 12, 'LineWidth', 2);
text(real(sigma) + 0.2, 0, 'Centro Asintoti', 'FontSize', 12, 'Color', 'r');

% Plot the directions of the asymptotes
raggio = 10; % Length of the asymptote lines - adjusted for better visualization
for i = 1:num_asintoti
    x_asintoto = [real(sigma), real(sigma) + raggio*cosd(theta(i))];
    y_asintoto = [0, raggio*sind(theta(i))];
    plot(x_asintoto, y_asintoto, 'r--', 'LineWidth', 1.5);
end

grid on;
title('Luogo delle radici di K(s-2) / [s^2(s+6)] con centro e asintoti');
xlabel('Parte Reale');
ylabel('Parte Immaginaria');
hold off;
