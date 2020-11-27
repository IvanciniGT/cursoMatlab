
matriz=[-1 0 -1; 0 0 0; 0 -1 -1];
matriz
matriz(: ,:)

matriz(2:3 ,2:3)
mean(mean(matriz(2:3 ,2:3)));

abs(sum(matriz(2:3 ,2:3),'all'))
