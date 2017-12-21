% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 7 : Ex. 2
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Set = loadInfo('u.data');
J = getJaccardDistance(Set);
SimilarPairs = getSimilarPairs(Set, J, 0.4);