%
%% Exercicio 10 da primeira lista de Analise de experimentos
%
% Em uma padaria, colhida uma amostra aleatória de certo pão produzido,
% foram obtidos os seguintes pesos em g:
%
%         50 50 51 51 51 52 52 52 52 
%
% Sabendo que a amostra foi extraída de uma população com distribuição
% normal, construa um IC para o diâmetro médio ao nível de 98% e 99%
% Resp: [50,42 ; 52,03] e [50,29 ; 52,15]
%
%

x = [50 50 51 51 51 52 52 52 52];
s = std(x); %desvio padrao
xbar = mean(x); % media
ci = 0.98; % IC
alpha = 1 - ci; % alpha

n = length(x); %number of elements in the data vector

T_multiplier = tinv(1-alpha/2, n-1); % T valor

ci95 = T_multiplier*s/sqrt(n);

disp(sprintf('Média: %1.4f', xbar));
disp(sprintf('Desvio Padrão(S): %1.4f', s));
disp(sprintf('\n'))

disp(sprintf('O IC é %1.4f +- %1.4f',xbar,ci95))
disp(sprintf('P( %1.4f <= Z <= %1.4f)',xbar - ci95, xbar + ci95))



