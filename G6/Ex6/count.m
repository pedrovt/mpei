% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gui�o 6 :  Returns the (minimum) number of occurrences of an element in the bloom filter
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ value ] = count ( B, k, word )
    m = length(B);
    
    values = zeros(1, k);
    wordToHash=word;
    
    for j= 1: k
        wordToHash = [wordToHash num2str(j)];               
        h = rem (string2hash(wordToHash), m) + 1;
        values(j) = B(h);
    end
 
    value = min(values);
end

