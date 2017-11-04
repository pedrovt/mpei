% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gui�o 5 : Primeira vers�o
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Funcao que gere uma chave (string) com comprimento aleatorio entre min e max assumindo
% uma distribuicao uniforme (discreta) e em que as letras (matriz letters) sao equiprovaveis.

function [ str ] = generateString ( min, max, letters )
length = randi([min max]);          % generates a random length
str = '';                                           
for i=1:  length
    str(i) = letters(ceil(rand()*52));
end

end

