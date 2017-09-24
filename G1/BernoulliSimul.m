% Estima a probabilidade de uma experi�ncia de Bernoulli por simula��o.
% N : n�mero de experi�ncias
% p : probabilidade de sucesso
% k : n�mero de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas:
% p : probabilidade de cara
% k : numero de caras
% n : numero de lan�amentos

function prob = BernoulliSimul(N, p, k, n)                         
    lancamentos   = rand(n,N) > p;    
    sucessos      = sum(lancamentos)==k;
    prob = sum(sucessos)/N;
end

