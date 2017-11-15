% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6 : Verify if an element belongs to the bloom filter
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ contains ] = verify( B, k,  member )
    m = length(B);
    contains = 1;
    for i = 1: k
        member = [member num2str(i)];
        h = rem (string2hash(member), m) + 1; 
        if B(h) == 0 
            contains = 0;
            break;
        end
    end


end

