% probabilidade de sucesso (p) = 0.3
% n�mero de amostras (n) = 5

% N�mero de experi�ncias
N = 1e5;

% Al�nea a (k = 3 pe�as defeituosas)
prob_a = BernoulliSimul(N, 0.7, 3, 5)

% Al�nea b (k = 2 pe�as defeituosas)
prob_b = 0;
for i = 0: 2
    prob_b = prob_b + BernoulliSimul(N, 0.7, i, 5);
end
prob_b

% Al�nea c (Histograma)
amostras      = rand(5, N) <= 0.3; %ou > 0.7
freqRelativas = sum(amostras);
hist(freqRelativas, 5)




