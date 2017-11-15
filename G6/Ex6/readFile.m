% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6 :  Reads a file and returns a cell array containing the words in the file
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ wordsFile ] = readFile(fileName)
fprintf('Reading file %s...\n', fileName);
file = fopen(fileName);
file_contents = fscanf(file, '%c', inf);
wordsFile = strsplit(file_contents);

end

