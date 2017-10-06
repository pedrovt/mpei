% Calcula a probabilidade de uma experi�ncia de Bernoulli.
% p : probabilidade de sucesso
% k : n�mero de sucessos
% n : n�mero de lan�amentos

% p : probabilidade de cara
% k : numero de caras
% n : numero de lan�amentos

function prob = Theoric (p, k, n)
    prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end