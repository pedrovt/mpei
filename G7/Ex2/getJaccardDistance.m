function [ J ] = getJaccardDistance( Set )
%LOADINFO Calcular as distâncias de Jaccard entre os elementos do conjunto 
% Set       Set to analyze
setSize = length(Set);

J = zeros(setSize);                   % array para guardar distâncias
h= waitbar(0,'Calculating');

for n1= 1: setSize,
    valueBar =  n1 / setSize;
    waitbar(valueBar,h, sprintf('Calculating...\n%.2f%% done.', valueBar * 100));
    
    for n2 = n1+1: setSize,
        % intersection length
        intersectLength = length(intersect(Set{n1}, Set{n2}));
        
        % union
        unionLength = length(Set{n1}) + length(Set{n2}) - intersectLength;
        
        % Jaccard Distance
        J(n1, n2) = 1 - intersectLength / unionLength;
        
    end
end
delete (h)

end

