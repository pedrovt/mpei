% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ T ] = generateRandomTransitionsMatrix( n )
T = rand(n, n);
sumT = sum(T);
sumT = repmat(sumT, [n, 1]);
T = T./sumT;

TT = sum(T);
if (max(max(TT)) == min(min(TT)) & min(min(TT)) == 1 & min(min(T)) >= 0 & max((max(T)) <= 1)) fprintf('� uma matriz estoc�stica\n');
else fprintf('N�o � uma matriz estoc�stica\n')
end

end

