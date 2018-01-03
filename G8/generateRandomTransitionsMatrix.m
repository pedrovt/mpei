% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ T ] = generateRandomTransitionsMatrix( n )
T = rand(n, n);
sumT = sum(T);
sumT = repmat(sumT, [n, 1]);
T = T./sumT;

TT = sum(T);
if (max(max(TT)) == min(min(TT)) & min(min(TT)) == 1 & min(min(T)) >= 0 & max((max(T)) <= 1)) fprintf('É uma matriz estocástica\n');
else fprintf('Não é uma matriz estocástica\n')
end

end

