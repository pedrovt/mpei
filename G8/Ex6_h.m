% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 6 h)
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc; 

% (h) Modifique a matriz H para aumentar esse tempo (ate a absorcao) e recalcule Q, F e o tempo ate a absorcao.
% A forma mais "eficiente" de aumentar esse tempo será diminuir
% a probabilidade de transição do estado 3 para o estado 4

% Matriz de transicao H (de Hyperlinks)
%       1    2       3              4 (absorvente)
H = [ 0.8  0       0.3           0        % 1
         0.2  0.9    0.29990    0       % 2
         0     0.1    0.4            0       % 3
         0     0       0.0001     1]      % 4
     
isStochasticMatrix(H);
getNumTransitionsUntilAbsorvent(H);