% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 6. A distribui��o de Poisson � uma forma limite da distribui��o binomial (quando n -> ? , p -> 0 e np
% permanece constante) e portanto pode ser usada para aproximar e simplificar os c�lculos envolvidos com
% a binomial numa situa��o dessas.

% Num processo industrial de fabrico de chips, alguns aparecem defeituosos tornando-os inapropriados
% para comercializa��o. 

% � sabido que em m�dia por cada mil chips h� um defeituoso. Determine a probabilidade de numa amostra de 
% 8000 aparecerem 7 defeituosos. Compare os resultados usando a distribui��o correcta e a aproxima��o de Poisson.

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Binomial distribution (theoric value) 
% n = 8000
% p = 1 pe�a em 1000 = 1/1000

n = 8000;                 % number of Bernoulli experiences
p = 1/1000;
k = 7;
probBinomTheor = prod(n-k+1:n)/factorial(k) * p^k * (1-p)^(n-k);
a = (factorial(n)/factorial(n-k)*factorial(k)) *p^k*(1-p)^(n-k)
b = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)
c = nchoosek(n, k)*p^k*(1-p)^(n-k)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Binomial distribution (simulation) 
% n = 8000
% p = 1 pe�a em 1000 = 1/1000

N = 1e3;                  % N�mero de experi�ncias
n = 8000;                 % number of Bernoulli experiences
p = 1/1000;
k = 7;
experience = rand(n, N);  % each column has 5 lines, each one with a faulty chip (< p) or a non-faulty chip (> p)

faultyChips = sum(experience < p); 

numSuccesses = faultyChips == k;
probBinomSimul = sum(numSuccesses) / N;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Poisson distribution   
lambda = n*p; % � = np na distribui��o Binomial de Poisson

probPoisson = (lambda^k/factorial(k)) * exp(-lambda);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Print Probabilities
fprintf('Probabilidade de numa amostra de 8000 chips aparecerem 7 defeituosos: \n\tDistribui��o binomial:\n\t\tTheoric: %f', probBinomTheor);
fprintf('\n\t\tSimulation: %f', probBinomSimul);
fprintf('\n\tDistribui��o de Poisson: %f\n', probPoisson);