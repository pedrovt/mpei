% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function F_pages = getNumTransitionsUntilAbsorvent(H) 
     
% Matriz Q
n = 3;                          % número de estados não absorventes
Q = H(1:n, 1:n)

% Matriz fundamental F
F = inv(eye(n) - Q)     % eye(n) matriz identidade n*n

% Media (valor esperado) do numero de passos necessarios para atingir a pagina 4 comecando
% na pagina 1, 2 e 3
F_pages = sum(F)

fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 1, %.1f \n', F_pages(1))
fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 2, %.1f \n', F_pages(2))
fprintf('Media do numero de passos necessarios para atingir a pagina 4 comecando na pagina 3, %.1f \n', F_pages(3))
end