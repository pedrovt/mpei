% Estima a probabilidade de uma experi�ncia de Bernoulli por simula��o e faz um gr�fico.
% N : numero de experi�ncias
% p : probabilidade de sucesso
% atLeast : numero m�nimo de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas
% N : numero de experi�ncias
% p : probabilidade de obter cara
% atLeast : numero m�nimo de caras
% n : n�mero de lan�amentos

function BernoulliSimul_AtLeast_Stem (N, p, atLeast, n) 
    prob = zeros(1, n+1);
    for i = 0: n
       prob (i+1) = BernoulliSimul(N, p, atLeast, i);
    end
    stem(0:n, prob)
    title('By Simulation')
end