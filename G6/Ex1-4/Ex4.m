% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6, Ex. 4
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Repita o teste da quest˜ao anterior para um n´umero diferente de func¸ ˜oes de dispers˜ao (k = 1; : : : ; 15),
% obtendo o n´umero de falsos positivos para cada k. Represente num gr´afico os valores obtidos, em func¸ ˜ao
% de k e sobreponha nesse gr´afico os valores te´oricos (Assuma a independˆencia de hash functions e que
% cada uma seleciona cada posic¸ ˜ao do bloom filter com igual probabilidade). Nota: Assume-se que as
% 10000 strings de teste s˜ao todas diferentes das 1000 inseridas no Bloom filter. No entanto pode haver
% strings iguais.

m = 1000;
strLength = 40;
n = 8000;
lengthTest = 10000;

kMax = 15;

% Calculate distPT
alphabet = ['A':'Z' 'a':'z' '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];  % Portuguese Alphabet
files = {'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(files, alphabet);
distPT = cumsum(pmfPT);

% Calculate probability of false positives for k between 1 and 15
falsePositives = zeros(1, kMax);
fprintf('\nNumber of hash functions:');
for k = 1: kMax
    falsePositives(k) = testStrs_kHashs(n, lengthTest, k, m, strLength, alphabet, distPT);
    fprintf('\n\t%d :  Probability of false positives = %.4f\n', k, falsePositives(k)/lengthTest);
    figure(1);
    plot(1:k, falsePositives(1:k)/lengthTest);
    xlabel('Number of hash functions');
    ylabel('Probability of false positives');
    drawnow;
end