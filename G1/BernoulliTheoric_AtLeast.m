% Calcula a probabilidade de uma experi�ncia de Bernoulli.
% p : probabilidade de sucesso
% atLeast : numero m�nimo de sucessos
% n : n�mero de lan�amentos

% No exerc�cio das moedas
% p : probabilidade de obter cara
% atLeast : numero m�nimo de caras
% n : n�mero de lan�amentos

function prob = BernoulliTheoric_AtLeast (p, atLeast, n)                         
    prob = 0;
    for i = atLeast: n
       prob = prob + BernoulliTheoric(p, i, n);
    end
end