% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6, Ex. 2
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;

members = {'Espanha', 'Itália', 'Portugal', 'Catalunha', 'Reino Unido' };
test = {'Portugal', 'Polónia', 'França', 'Reino Unido'};

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
           fprintf('%s não pertence\n', test{i});
    end
end