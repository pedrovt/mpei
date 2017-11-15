% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 6 :  Add to Counting Bloom Filter
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

function [ B ] = insert ( B, k,  member )
    m = length(B);   
    memberToHash = member;
    
    for i = 1: k
        memberToHash = [memberToHash num2str(i)];           
        h = rem (string2hash(memberToHash), m) + 1;       % hash value between 1 and m
        B(h) = B(h) + 1;                                                        % counts
    end
end