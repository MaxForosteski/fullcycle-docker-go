## CURSO DOCKER - DESAFIO GO

- Essa imagem go está sendo buildada usando go:alpine em cima de uma imagem scratch, que por si só já é bem leve
- Esta sendo passado flags para remover a symbol table(funções e variaveis voltados a depuração) e as informações de depuração, deixando o binário mais enxuto
- Usando o upx para comprimir o executavel final

docker hub: maxforosteski/fullcycle

