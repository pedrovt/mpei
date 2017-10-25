% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 4. Sabendo que um processo de fabrico produz 30% de pe�as defeituosas e considerando a vari�vel aleat�ria, X, 
%    que representa o n�mero de pe�as defeituosas numa amostra de 5 pe�as tomadas aleatoriamente, obenha
%    (analiticamente e por simula��o):

% X vari�vel aleat�ria discreta binomial
% n = 5
% P(sucesso) = 0.3

%    (a) o histograma representativo da distribui��o de probabilidades de X;
N = 1e4;                  % number of experiences
n = 5;                    % number of Bernoulli experiences
p = 0.3;                  
experience = rand(n, N);  % each column has 5 lines, each one with a faulty (< 0.3) or good parts (> 0.3)
numPieces  = sum(experience < p);

prob = histc(numPieces, 0:n) / N;
stem(0:n, prob, 'r')
%axis([- 1 6 0 0.4])
axis([-0.5 5.5 0 0.4])
ylabel('Probability')
xlabel('Num of faulty pieces in a 5 pieces sample')
title('Probability distribution of Random Variable X');
grid on

%%    (b) a probabilidade de, no m�ximo, 2 das pe�as de uma amostra serem defeituosas.
     
% Analiticamente
% P(X <= 2) = Sum(k = 0 -> 2) de (5 k) * 0.3^k * (0.7)^5-k = 0.8369
% n = 5; k = 0, 1, 2; p = 0.3
probT = 0;
for k = 0 : 2 
    probT = probT + factorial(5)/(factorial(5-k)*factorial(k))*0.3^k*(1-0.3)^(5-k);
end
fprintf('Probabilidade te�rica de, no m�ximo, 2 das pe�as de uma amostra serem defeituosas: %.3f\n', probT);

% Por simula��o (e utilizando a experi�ncia da al�nea a)
successes  = sum(experience < 0.3) <= 2;
probS      = sum(successes) / N;
fprintf('\nProbabilidade por simula��o de, no m�ximo, 2 das pe�as de uma amostra serem defeituosas: %.3f\n', probS);

