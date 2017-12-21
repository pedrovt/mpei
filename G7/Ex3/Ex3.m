% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 7 : Ex. 3
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Jaccard Distance using Minhash
Set = loadInfo('u.data');
setSize = length(Set);

% Get minhashs
kMax = 15;
h = zeros(kMax, setSize);
minHash = zeros(kMax);

% for each one of the k hash function
for k = 1: kMax
    % for each member of the set
    for n = 1: setSize
        % get hash value
        key = tostring(Set(n)+num2str(k));
        h(k, n) = rem (string2hash(key), m) + 1;
    end
    % min hash
    minHash(k) = min(h(k,:));
end

% Estimate Jaccard Similarity
for k = 1: kMax
        differentValues = differentValues + length(unique(h(k:k+1,:)));
end
jaccardSimilarity = differentValues / kMax

