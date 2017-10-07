%% 5. Considere um array de tamanho 1000 que serve de base � implementa��o de uma mem�ria
%     associativa (por exemplo em Java) e que se pode assumir que a fun��o de hash devolve um valor 
%     entre 0 e 999 com igual probabilidade.

%% (a) Qual a probabilidade de haver colis�es (pelo menos 2 keys mapeadas pela fun��o de hash para a
%      mesma posi��o do array) em situa��es em que temos apenas 10 keys?
N = 1e5;         % Number of experiences
numKeys = 10;    % Number of keys available (max number of keys is the number of positions in the array)
hash = 999;      % Max value the hash function can return

experience = ceil(hash * rand(numKeys, N));               % Each column contains 1 experience; each experience contains k lines, each one containing the hash value (0-999) for each key
successes  = 0;                                 

parfor i = 1:  N                                         % For each experience
    if (length (unique(experience(:,i))) < numKeys)      % if the number of different numbers is smaller than the number of keys, ie not all numbers are different, ie at least one position has the same hash
        successes =  successes + 1;                      % counts as success
    end
end

fprintf('Probabiliy of having colisions with 1000 different hash values with k = 10 keys ==')
disp(successes / N)

%% (b) Fa�a um gr�fico da probabilidade de colis�es em fun��o do n�mero de keys.
N = 1e3;            % Number of experiences
numMaxKeys = 1000;  % Max number of keys available (max number of keys is the number of positions in the array)
hash = 999;         % Max value the hash function can return

successes  = zeros(1, numMaxKeys);                                 

for numKeys = 1 : numMaxKeys
    experience = ceil(hash * rand(numKeys, N));           % Each column contains 1 experience; each experience contains numKeys lines, each one containing the hash value (0-999) for each key
    
    for i = 1:  N                                         % For each one of the N experiences
        if (length (unique(experience(:,i))) ~= numKeys)   % if the number of different numbers is smaller than the number of keys, ie not all numbers are different, ie at least one position has the same hash
            successes(numKeys) = successes(numKeys) + 1;  % counts as success
        end
    end
    
end

prob = successes / N;
plot(prob)
xlabel('numKeys')
ylabel('P(numKeys)')
title('Probability of colision in function of the number of keys')

%% (c) Para um n�mero fixo de keys, por exemplo 50, represente graficamente a varia��o da probabilidade
%      de n�o haver qualquer colis�o em fun��o do tamanho do array.

% Probabilidade de n�o existir qualquer colis�o :: if (length
% (unique(experience(:,i))) = k) success  ++

N = 1e3;            % Number of experiences
numKeys = 50;       % Number of keys available
hashMax = 999;      % Max value the hash function can return (<=> size of the array)

successes  = zeros(1, hashMax);                                 

for hash = 1 : hashMax
    experience = ceil(hash * rand(numKeys, N));           % Each column contains 1 experience; each experience contains numKeys lines, each one containing the hash value (0-999) for each key
    
    for i = 1:  N                                         % For each one of the N experiences
        if (length (unique(experience(:,i))) == numKeys)   % if the number of different numbers is smaller than the number of keys, ie not all numbers are different, ie at least one position has the same hash
            successes(hash) = successes(hash) + 1;  % counts as success
        end
    end
    
end

prob = successes / N;
plot(prob)
xlabel('hashMax')
ylabel('P(hashMax)')
title('Probability of colision in function of the array size/max value of the hash')
