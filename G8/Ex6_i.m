% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 6 i)
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% (i) Confirme os valores dos pontos anteriores atraves de simulacao (faca a media de varias simulacoes).
% Use o codigo Octave no verso como base para criar a suas simulacoes.

%% State transition matrix (page 4 is absorving)
tic

clc;
clear all;

H = [ 0.8  0       0.3     0        
         0.2  0.9    0.2      0     
         0     0.1    0.4      0    
         0     0       0.1     1]     
isStochasticMatrix(H);

% Theoric Values (Using Markov Chains)
fprintf('Valores teoricos\n')
theoricValues = getNumTransitionsUntilAbsorvent(H);

% How to use crawl()
fprintf('\n-----------------------------------\nValores por simulacao\n')

to = 4;                                   % destination page (the absorving page)
fromNum = 3;
N = 5e3;                                % about 23 seconds to run

values = zeros(1, fromNum);
bar = waitbar(0,'Simulating...');          % wait bar
for from = 1: fromNum                      % for each one of the possible original pages
    results = zeros(1, N);
    for n = 1: N;                                    % repeat N times
        results(n) = crawl(H, from, to);
        if (rem(n, 100) == 0) 
            valueBar =  n / N;
            waitbar(valueBar, bar, sprintf('Simulating for page %.0f...\n%.2f%% done.', from, valueBar * 100))
        end
        %results(n) = length(state);
    end
    values(from) = mean(results);
    fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina %.0f, %.1f \n', from, values(from))
end
delete(bar)
values;
toc