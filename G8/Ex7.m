% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 7
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

% Tres amigos, a Ana, o Bernardo e a Catarina, resolveram trocar dinheiro entre si uma vez por dia durante
% um ano da seguinte maneira: 

% A Ana da 20% do que tem ao Bernardo e fica com o resto para si. 
% O Bernardo da 10% do que tem a Ana, da 30% do que tem a Catarina e fica com o resto para si. 
% A Catarina da 5% do que tem  a Ana, da 20% do que tem ao Bernardo e fica com o resto para si. 
fprintf('-------------------------\nCondições Iniciais:\n');
%       A     B     C
H =[   0.8  0.1   0.05      % A
          0.2  0.6   0.2        % B
          0.0  0.3   0.75  ]   % C
isStochasticMatrix(H);

% Sabendo que as 12h do dia 1 de Janeiro de 2015 
% a Ana tinha 100 euros, que 
% o Bernardo tinha 200 euros e que 
% a Catarina tinha 30 euros
total = 100+200+30;
X = [100/total; 200/total; 30/total]

% O dinheiro e transferido electronicamente, sem arredondamento, as 23h59m de cada dia e e creditado na conta de
% cada um no inicio do dia seguinte.

% responda  as seguintes questoes:
%% (a) As 12h do dia 4 de Janeiro, quanto dinheiro tinha cada um dos amigos?
% Resposta:  Ana
%                   Bernardo
%                   Catarina

% 12h do Dia 4 de Janeiro são 3 transições (passaram 3 dias)
prob = H^3 * X;
fprintf('\n-------------------------\n');
fprintf('No dia 4 de Janeiro, às 12h:')
fprintf('\nAna: %.2f€', prob(1) * total);
fprintf('\nBernardo: %.2f€', prob(2) * total);
fprintf('\nCatarina: %.2f€\n', prob(3) * total);

%% (b) Logo depois da passagem de ano para o ano de 2016, com quanto dinheiro vai ficar cada um dos
% amigos?
% Resposta:  Ana
%                   Bernardo
%                   Catarina

% Logo depois da passagem de ano para o ano de 2016 são 364 transições
% (passaram 364 dias)
prob = H^364 * X;
fprintf('\n-------------------------\nLogo depois da passagem de ano para o ano de 2016:')
fprintf('\nAna: %.2f€', prob(1) * total);
fprintf('\nBernardo: %.2f€', prob(2) * total);
fprintf('\nCatarina: %.2f€\n', prob(3) * total);

% (c) Em que dia, no formato dia do mes e mes, passa a Catarina a ter mais de 130 euros?
i = 1;
while(1)
    prob = H^i * X;
    prob_Catarina = prob(3) * total;
    if (prob_Catarina > 130) break;
    end
    i = i + 1;
end

% Resposta: 
fprintf('\n-------------------------\n');
i
fprintf('i = 9 pelo que será no dia 10 de Janeiro de 2016\n');
