function [ SimilarPairs ] = getSimilarPairs(Set, J, threshold)
%GETSIMILARPAIRS Processa as distâncias de Jaccard, devolve os items similares e imprime-os.

setSize = length(Set);

% Array para guardar pares similares (user1, user2, distância)
SimilarPairs= zeros(1,3);
k= 1;
for n1= 1: setSize,
    for n2= n1+1: setSize,
        if J(n1, n2) < threshold
            SimilarPairs(k,:) = [Set(n1) Set(n2) J(n1,n2)];
            k= k+1;
        end
    end
end

numSimilarPairs = length(SimilarPairs);
fprintf('Número de pares considerados semelhantes (com distâncias inferiores ao limiar %1.1f): %d\n', threshold, numSimilarPairs) 
fprintf('\nPair 1\tPair 2\tJaccard Distance\n')
for n = 1 : numSimilarPairs
    fprintf('%d\t%d\t%f\n', SimilarPairs(n, 1), SimilarPairs(n,2), SimilarPairs(n,3));
end

end

