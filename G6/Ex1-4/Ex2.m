% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gui�o 6, Ex. 2
% M�todos Probabil�sticos para Engenharia Inform�tica
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;

members = {'Espanha', 'It�lia', 'Portugal', 'Catalunha', 'Reino Unido' };
test = {'Portugal', 'Pol�nia', 'Fran�a', 'Reino Unido'};

m = 100;        % Bloom filter size
k = 3;              % Number of hash 
B = init (m);

for i = 1: length(members)
    B = insert (B, k, members{i});
end

for i = 1: length(test)
    contains = verify(B, k, test{i});
    if (contains == 1)
           fprintf('%s pertence\n', test{i});
    else
           fprintf('%s n�o pertence\n', test{i});
    end
end