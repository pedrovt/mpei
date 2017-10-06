%% Al�nea a: sair sequ�ncia de 10 caras
fprintf('\n------------------------------------\nAl�nea 2a: Valor por simula��o: ')
disp(Simul(1e5, 0.5, 10, 10))
fprintf('           Valor te�rico: ')
disp(Theoric(0.5, 10, 10))

%% Al�nea b: sair cara no proximo lancamento, o decimo-primeiro

fprintf('\n------------------------------------\nAl�nea 2b: Valor por simula��o: ')
lancamentos     = rand(11,1e5) > 0.5;    
sucessos10Caras = sum(lancamentos(1:10,:)) == 10;
sucessso11Caras = sum(lancamentos) == 11;
prob = sum(sucessso11Caras) / sum(sucessos10Caras);
disp(prob)

fprintf('           Valor te�rico: ')
disp(Theoric(0.5, 11, 11) / Theoric(0.5, 10, 10))
