% Calcula a probabilidade de uma experi�ncia de Bernoulli e faz um gr�fico.
% p : probabilidade de sucesso
% atLeast : numero m�nimo de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas
% p : probabilidade de obter cara
% atLeast : n�mero m�nimo de caras
% n : n�mero de lan�amentos

function BernoulliTheoric_AtLeast_Stem (p, atLeast, n) 
    prob = zeros(1, n+1);
    for i = 1: n
       prob (i) = BernoulliTheoric(p, atLeast, i);
    end
    stem(0:n, prob)
    title('By Theoric Formula')
end