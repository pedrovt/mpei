%% Exerc�cio 2
fprintf('\nExerc�cio 2\n')
probSim_2     = BernoulliSimul(1e5, 0.5, 6, 15)
probTheoric_2 = BernoulliTheoric(0.5, 6, 15)


%% Exerc�cio 3
fprintf('\n-----------------------\nExerc�cio 3\n')
probSim_3     = BernoulliSimul_AtLeast(1e5, 0.5, 6, 15)
probTheoric_3 = BernoulliTheoric_AtLeast(0.5, 6, 15)
