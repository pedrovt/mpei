% M  : mamograma positivo
% NM : mamograma n�o positivo (negativo)
% C  : ter cancro da mama
% NC : n�o ter cancro da mama
% pC : probabilidade de ter cancro da mama

format long;

% Valor te�rico com pC = 1 / 10000;
pC   = 1 / 10000;
probTeorica1 = 0.9 * pC / (0.9 * pC + 0.1 * (1 - pC));
disp(probTeorica1)

% Valor te�rico com pC = 1 / 1000
pC   = 1 / 1000;
probTeorica2 = 0.9 * pC / (0.9 * pC + 0.1 * (1 - pC));
disp(probTeorica2)

% Valor por simula��o com pC = 1 / 10000;
tic
N         = 1e6;
pC        = 1/10000;

terCancro   = rand(1, N) < pC ;
darPositivo = zeros (1, N);
for i = 1 : N
    if terCancro(i)  == 1
        darPositivo(i) = rand() < 0.9;
    else 
        darPositivo(i) = rand() < 0.1;
    end
end

probSim1 = sum(terCancro & darPositivo) / sum(darPositivo);
toc
disp(probSim1)

% Valor por simula��o com pC = 1 / 1000;
N         = 1e6;
pC        = 1/1000;

terCancro = rand(1, N) < pC ;
darPositivo = zeros (1, N);
for i = 1 : N
    if terCancro(i)  == 1
        darPositivo(i) = rand() < 0.9;
    else 
        darPositivo(i) = rand() < 0.1;
    end
end

probSim2 = sum(terCancro & darPositivo) / sum(darPositivo);
disp(probSim2)