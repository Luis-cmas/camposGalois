%operaciones con campos de galois
% Definir los parámetros del campo de Galois
q = 8;  % Número de elementos del campo
p = 2;  % Número primo base
n = 3;  % Potencia de p

% Generar el conjunto de elementos del campo de Galois
gf_elements = mod(0:(q-1), p^n);

% Realizar operaciones con campos de Galois
a = 3;  % Crear un elemento del campo de Galois
b = 5;

% Suma
c = mod(a + b, q);
disp(['Suma: ' num2str(c)]);

% Resta
d = mod(a - b, q);
disp(['Resta: ' num2str(d)]);

% Multiplicación
e = mod(a * b, q);
disp(['Multiplicación: ' num2str(e)]);

% División (usando inverso multiplicativo)
if b ~= 0
    inverse_b = mod(mod(b, q)^(q-2), q);  % Inverso multiplicativo de b
    f = mod(a * inverse_b, q);
    disp(['División: ' num2str(f)]);
else
    disp('División por cero no está definida.');
end

% Potenciación
g = mod(a^3, q);
disp(['Potenciación: ' num2str(g)]);
