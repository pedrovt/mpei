% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 6 a) - g)
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

%% (a) Escreva a matriz de transicao H (de Hyperlinks), com Hji sendo a probabilidade de ir da pagina i
% para a pagina j num unico passo. Crie em Matlab/Octave essa matriz.
%       1    2       3        4 (absorvente)
H = [ 0.8  0       0.3     0        % 1
         0.2  0.9    0.2      0       % 2
         0     0.1    0.4      0       % 3
         0     0       0.1     1]      % 4
isStochasticMatrix(H);

%% (b) Qual a probabilidade de comecando na pagina 1 ao fim de 1000 passos estar na pagina 2? Estava a
X = [1; 0; 0; 0]                                                    % começar na página 1;
prob =H^1000 * X
fprintf('Probabilidade de comecando na pagina 1 ao fim de 1000 passos estar na pagina 2, %f \n', prob(2))

%% (c) Determine a probabilidade de chegar a pagina j a partir da pagina i, em 1,2,10 e 100 passos.
prob_1     = H 
prob_2     = H^2
prob_10   = H^10
prob_100 = H^100

%% (d) Determine a matriz Q.
n = 3;      % número de estados não absorventes
Q = H(1:n, 1:n)

%% (e) Determine a matriz fundamental F.
F = inv(eye(n) - Q)    % eye(n) matriz identidade n*n

%% (f) Qual a media (valor esperado) do numero de passos necessarios para atingir a pagina 4 comecando
% na pagina 1? e se comecarmos na pagina 2? e se iniciarmos na pagina 3?
F_pages = sum(F)
fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 1, %.2f \n', F_pages(1))
fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 2, %.2f \n', F_pages(2))
fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 3, %.2f \n', F_pages(3))

%% (g) Qual o tempo ate a absorcao das paginas 1 a 3?
% O tempo nestas cadeias de Markov é discreto, pelo que cada passo é um
% instante de tempo. Logo, quanto mais passos, mais tempo até à absorção
% das páginas. Pelo que basta analisar os resultados da alínea f