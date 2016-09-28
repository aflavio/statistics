%
%% Exercicio 10 da primeira lista de Analise de experimentos
%
% Uma amostra de 50 funcionarios é tomada de uma linha de produção. A média
% de hrs trabalhadas por semana é de 5 hrs com desvio padrao de
% populacional de 1 hr. Construa IC com 92% e 99%. 
%
%

s = 1; %desvio padrao
xbar = 5; % media
ci = 0.92; % IC
alpha = 1 - ci; % alpha

n = 50; %number of elements in the data vector

T_multiplier = tinv(1-alpha/2, n-1); % T valor

ci95 = T_multiplier*s/sqrt(n);

disp(sprintf('Média: %1.4f', xbar));
disp(sprintf('Desvio Padrão(S): %1.4f', s));
disp(sprintf('\n'))

disp(sprintf('O IC é %1.4f +- %1.4f',xbar,ci95))
disp(sprintf('P( %1.4f <= Z <= %1.4f)',xbar - ci95, xbar + ci95))


