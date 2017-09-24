% Estima a probabilidade de uma experi�ncia de Bernoulli por simula��o.
% N : numero de experi�ncias
% p : probabilidade de sucesso
% atLeast : numero m�nimo de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas
% N : numero de experi�ncias
% p : probabilidade de obter cara
% atLeast : numero m�nimo de caras
% n : n�mero de lan�amentos

function prob = BernoulliSimul_AtLeast (N, p, atLeast, n)                         
    prob = 0;
    for i = atLeast: n
       prob = prob + BernoulliSimul(N, p, i, n);
    end
end