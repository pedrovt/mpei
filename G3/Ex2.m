% 2. Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100:
%% (a) Descreva o espa�o de amostragem da experi�ncia, retirar uma nota da caixa, e as probabilidades
% dos acontecimentos elementares.

% Espa�o de amostragem S = {cada uma das 100 notas}
% Probabilidade de cada acontecimento elementar = 1 / n�mero de notas = 1/100

%% (b) Considere a vari�vel aleat�ria X como sendo o valor de uma nota retirada � sorte da caixa acima
% descrita. Descreva o espa�o de amostragem de X e determine as probabilidades dos v�rios valores de X.
 
% O espa�o de amostragem da vari�vel aleat�ria X, S_X, � o conjunto {5, 50, 100}
% que corresponde aos 3 diferentes valores das 100 notas existentes.

% A probabilidade de cada acontecimento elementar � P(V) = n�mero de notas com
% esse valor V/ n�mero total de notas.
% Pelo que P(5)   = 90 / 100 = 0.9; 
%          P(50)  = 9  / 100 = 0.09; 
%          P(100) = 1  / 100 = 0.01;


%% (c) Determine a fun��o massa de probabilidade de X e efectue a sua representa��o gr�fica em Matlab/Octave.
%                | 0.9   , xi = 5
% P (X = xi)  =  | 0.09  , xi = 50
%                | 0.01  , xi = 100
%                | 0     , outros valores de xi

stem([5, 50, 100], [0.9, 0.09, 0.01],)
ylabel('P(X=xi)')
xlabel('xi')
axis([0 100 0 1])
title('Probability Mass Function (PMF) of Random Variable X');
grid on