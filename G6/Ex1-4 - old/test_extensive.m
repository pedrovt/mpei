%  Para um teste mais exaustivo:
% (a) Gere m=1000 strings aleatorias com 40 caracteres (considere como caracteres possíveis o conjunto
% de caracteres minusculos, maiúsculos e algarismos) e preencha um Bloom Filter, de tamanho
% n=8000. Este Bloom Filter deve ter k = 3 funcoes de dispersão e as strings geradas devem obdecer
% as diferentes probabilidades de ocorrencia das letras em portugues. 
m              = 1000;
strLength = 40;
members = zeros(m, strLength);

% Calculate distPT
alphabet = ['A':'Z' 'a':'z' '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];  % Portuguese Alphabet
files={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(files, alphabet);
distPT = cumsum(pmfPT);


% Create Bloom Filter and test 
n = 8000;
B=initBloomFilter(n);

   
% Generate members vector
for i = 1 : m
    string = generateString(40,0,alphabet, distPT);
    B=addBloomFilter(B,l, string);
end 

% (b) Gere um segundo conjunto de 10000 strings aleatorias com 40 caracteres e teste a pertenca das
% mesmas ao Bloom Filter que preencheu antes. Quantas destas strings foram consideradas como
% pertencendo ao conjunto com que o filtro foi preenchido? Estava a espera deste resultado?
% Generate test vector
lengthTest = 10000;
for i = 1 : lengthTest
    string = generateString(40,0,alphabet, distPT);
    r=verify(B.k,string);
    
    if r
        fp=fp+1;
    end
    
end 

% Create Bloom Filter and test 
n = 8000;
K = 3;
test(members, test, n, k);