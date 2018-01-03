% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 3
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Crie uma matriz de transicao para uma cadeia de 20 estados gerando os elementos 
% dessa matriz com a ajuda da funcao rand(). 
clc;
clear all;

n = 20;     % can be changed
T = rand(n, n);
sumT = sum(T);
sumT = repmat(sumT, [n, 1]);
T = T./sumT;

isStochasticMatrix(T);

% (a) Qual a probabilidade de o sistema fazer uma transicao entre o primeiro e o ultimo estado em 
X = [ 1; zeros(n - 1, 1)];

% 20 transicoes ? 
prob_A = T^20 * X;
fprintf('Probabilidade de o sistema fazer uma transicao entre o primeiro e o ultimo estado em 20 transições, %f\n', prob_A(n));

% E em 40 ? 
prob_B = T^40 * X;
fprintf('Probabilidade de o sistema fazer uma transicao entre o primeiro e o ultimo estado em 40 transições, %f\n', prob_B(n));

% E em 100 ?
prob_C = T^100 * X;
fprintf('Probabilidade de o sistema fazer uma transicao entre o primeiro e o ultimo estado em 100 transições, %f\n', prob_C(n));