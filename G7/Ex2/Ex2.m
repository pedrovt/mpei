% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gui�o 7 : Ex. 2
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Set = loadInfo('u.data');
J = getJaccardDistance(Set);
SimilarPairs = getSimilarPairs(Set, J, 0.4);