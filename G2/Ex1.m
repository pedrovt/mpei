% Estima a probabilidade de uma experi�ncia de Bernoulli por simula��o.
% N : n�mero de experi�ncias
% p : probabilidade de sucesso
% k : n�mero de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas:
% p : probabilidade de cara
% k : numero de caras
% n : numero de lan�amentos

%% Al�nea a)
p = 0.5;
N = 1e5;
k = 1;
n = 2;

fprintf('\n-----------------------\nAl�nea a: Valor por simula��o: ')
disp(Simul(1e5, 0.5, 1, 2) + Simul(1e5, 0.5, 2, 2))
% ou 
% filhos = rand(n, N) > 0.5
% res = sum(filhos) >= 1
% prob = sum(res)/N
fprintf('\nValor te�rico: ')
disp(Theoric(0.5, 1, 2) + Theoric(0.5, 2, 2))

%% Al�nea c)

filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = sum(filhos) >= 1;
probB = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAl�nea c: Valor por simula��o: ')
disp(probB)

%% Al�nea d)

filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = filhos(1,:);
probC = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAl�nea d: Valor por simula��o: ')
disp(probC)

%% Al�nea e)

filhos = rand(5, N) > 0.5;
res1 = sum(filhos) >= 1;
res2 = filhos(1,:);
probE = sum(res1) / sum(res2);
fprintf('\n-----------------------\nAl�nea e: Valor por simula��o: ')
disp(probE)
