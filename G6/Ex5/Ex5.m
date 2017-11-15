% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6 : Ex. 5
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Tested using the same document twice (result MUST be 0)

% Open files
fileName1 = 'pg17186.txt';
wordsFile1 = readFile (fileName1);
wordsFile2 = readFile ('pg31190.txt');
%wordsFile2 = readFile ('pg17186.txt');

% Add words of file 1 to Bloom Filter
n =  length(wordsFile1);                           %  number of words
m = n * 15;                                                 %  size of the Bloom Filter (number of buckets)
k = round ((m / n) * log(2));                     % “Optimal” value of k: n/m ln(2)
bloomFilter = init (m);

fprintf('\nCreating Bloom Filter for words in file %s...\n', fileName1); 
bar = waitbar(0,'Creating Bloom Filter for words...');            % wait bar
for i = 1: length(wordsFile1)
        bloomFilter = insert (bloomFilter, k, wordsFile1{i});
        valueBar =  i / n;
        waitbar(valueBar, bar, sprintf('Creating Bloom Filter for words in file %s...\n%.2f%% done.', fileName1, valueBar * 100))
end

fprintf('Verifying if the words in file pg17186.txt belongs to pg17186.txt...\n'); 
% Verify if the words of file 2 belong to the Bloom Filter
count = 0;
for i = 1: length(wordsFile2)
        contains = verify(bloomFilter, k, wordsFile2{i});
        % If doesn't belong to count
        if (contains ~= 1) 
               count = count + 1;
        end
end

fprintf('Número de palavras do segundo texto que não existem no primeiro: %d\n', count)