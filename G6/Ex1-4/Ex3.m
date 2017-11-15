% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gui�o 6, Ex. 3
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Para um teste mais exaustivo:
% (a) Gere m=1000 strings aleatorias com 40 caracteres (considere como caracteres poss�veis o conjunto
% de caracteres minusculos, mai�sculos e algarismos) e preencha um Bloom Filter, de tamanho
% n=8000. Este Bloom Filter deve ter k = 3 funcoes de dispers�o e as strings geradas devem obdecer
% as diferentes probabilidades de ocorrencia das letras em portugues. 
m = 1000;
strLength = 40;
n = 8000;
k = 3;

% (b) Gere um segundo conjunto de 10000 strings aleatorias com 40 caracteres e teste a pertenca das
% mesmas ao Bloom Filter que preencheu antes. Quantas destas strings foram consideradas como
% pertencendo ao conjunto com que o filtro foi preenchido? Estava a espera deste resultado?
lengthTest = 10000;

% Calculate distPT
alphabet = ['A':'Z' 'a':'z' '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];  % Portuguese Alphabet
files = {'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(files, alphabet);
distPT = cumsum(pmfPT);

% Calculate probability of false positives for k = 3;
falsePositives = testStrs_kHashs(n, lengthTest, k, m, strLength, alphabet, distPT);
fprintf('Number of hash functions: \n\t%d :  Probability of false positives = %.4f\n', k, falsePositives/lengthTest);
