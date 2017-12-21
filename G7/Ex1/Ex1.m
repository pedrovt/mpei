% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 7 : Ex. 1
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Analise o c´odigo Matlab disponibilizado conjuntamente com este gui˜ao e complete-o por forma a conseguir
% calcular a distˆancia de Jaccard entre os conjuntos de filmes avaliados pelos v´arios utilizadores.
% Inclua no c´odigo a possibilidade de calcular o tempo que demora cada uma das partes (c´alculo da
% distˆancia e determinac¸ ˜ao das distˆancias abaixo de um determinado limiar). Veja a informc¸ ˜ao relativa
% a tic, toc, cputime, etime.
% No final, o programa deve mostrar informac¸ ˜ao com:
% (1) n´umero de pares de utilizadores com distˆancias inferiores ao limiar definido;
% (2) informac¸ ˜ao sobre cada par (utilizadores e distˆancia).
% Adicione, tamb´em, a capacidade de gravar em ficheiro a matriz de distˆancias calculada. Sugere-se que
% consulte a informac¸ ˜ao de save.

tic, 
% Carrega o ficheiro dos dados dos filmes
udata=load('u.data'); 

% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1));                           % Extrai os IDs dos utilizadores
numberOfUsers= length(users);          % Número de utilizadores

% Constrói a lista de filmes para cada utilizador
Set = cell(numberOfUsers,1);            % Usa céulas
for n = 1:numberOfUsers,                 % Para cada utilizador
    % Obtém os filmes de cada um
    ind = find(u(:,1) == users(n));
    
    % E guarda num array. Usa células porque cada utilizador tem um número
    % diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end

% Calcula a distância de Jaccard entre todos os pares pela definição.
load J

% uncomment if J.mat does not exist
% J = zeros(numberOfUsers);                   % array para guardar distâncias
% h= waitbar(0,'Calculating');
% for n1= 1: numberOfUsers,
%     valueBar =  n1 / numberOfUsers;
%     waitbar(valueBar,h, sprintf('Calculating...\n%.2f%% done.', valueBar * 100));
%     
%     for n2 = n1+1: numberOfUsers,
%         % intersection length
%         intersectLength = length(intersect(Set{n1}, Set{n2}));
%         
%         % union
%         unionLength = length(Set{n1}) + length(Set{n2}) - intersectLength;
%         
%         % Jaccard Distance
%         J(n1, n2) = 1 - intersectLength / unionLength;
%         
%     end
% end
% delete (h)
% save ('J', 'J')

% Com base na distância, determina pares com distância inferior a um limiar pré-definido
threshold = 0.4;                          % limiar de decisão

% Array para guardar pares similares (user1, user2, distância)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:numberOfUsers,
    for n2= n1+1:numberOfUsers,
        if J(n1, n2) < 0.4
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k= k+1;
        end
    end
end

numSimilarUsers = length(SimilarUsers);
fprintf('Número de pares de utilizadores com distâncias inferiores ao limiar %1.1f: %d\n', threshold, numSimilarUsers) 
fprintf('\nUser 1 ID\tUser 2 ID\tJaccard Distance\n')
for n = 1 : numSimilarUsers
    fprintf('%d\t%d\t%f\n', SimilarUsers(n, 1), SimilarUsers(n,2), SimilarUsers(n,3));
end

,toc
