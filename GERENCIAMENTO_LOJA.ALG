Algoritmo "Gerenciamento_Loja"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/11/2026
Var
// Seção de Declarações das variáveis 
cod: vetor[1..5] de inteiro
nome: vetor[1..5] de caractere
preco: vetor[1..5] de real
estoq: vetor[1..5] de inteiro
matrizVendas: vetor[1..5, 1..3] de inteiro
totalProdVendidos: vetor[1..5] de inteiro
opcao, i, j, codigoBusca, qtdDesejada, diaVenda: inteiro
totalvendas, totalPecas: inteiro
faturamentoTotal: real
cadastrado: logico
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
opcao <- 0
cadastrado <- falso
totalvendas <- 0
totalPecas <- 0
faturamentoTotal <- 0

para i de 1 ate 5 faca
totalProdVendidos[i] <- 0
para j de 1 ate 3 faca
matrizVendas[i, j] <- 0
fimpara

escreval("")
escreval("===SISTEMA DE GERENCIAMENTO===")
escreval("1. Cadastrar Produtos")
escreval("2. Registrar Vendas")
escreval("3. Consultar Estoque")
escreval("4. Exibir Relatorio de Vendas")
escreval("5. Exibir Relatorio Geral (matriz)")
escreval("6. Sair do Sistema")
escreva("Digite sua opcao: ")
leia(opcao)
escolha opcao
caso 1
escreval("---CADASTRO DOS 5 PRODUTOS---")
para i de 1 ate 5 faca
escreva("Prod", i)
escreva("Codigo: ")
leia(cod[i])
escreva("Nome: ")
leia(nome[i])
escreva("Preco Unitario: ")
leia(preco[i])
escreva("Quantidade em Estoque: ")
leia(estoq[i])
fimpara
cadastrado <- verdadeiro
escreval("Cadastro Finalizado com Sucesso")

caso 2
se cadastrado = falso entao
escreval("Cadastre os produtos primeiro (opcao1)!")
senao
escreval("---Registrar Venda---")
escreva("Informe o dia da venda(1, 2, ou 3 ): ")
leia(diaVenda)

se (diaVenda < 1) ou (diaVenda > 3 )entao
escreval("Dia Invalido! Use apenas 1, 2 ou 3.")
senao
escreval("Digite o Codigo do Produto: ")
leia(codigoBusca)

i <- 0
para j de 1 ate 5 faca
se cod[j] = codigoBusca entao
i <- j
fimse
fimpara

se i = 0 entao
escreval("Erro: Produto não encontrado! ")
senao
escreval("Produto Encontrado: ", nome[i], "/ Estoque Atual: ", estoq[i])
escreva("Digite quantidade desejada: ")
leia(qtdDesejada)

se qtdDesejada > estoq[i] entao
escreval("Erro: Estoque insuficiente!")
senao
estoq[i] <- estoq[i] - qtdDesejada
totalProdVendidos[i] <- totalProdVendidos + qtdDesejada
matrizVendas[i, diaVenda] <- matrizvendas[i, diavenda] + qtdDesejada

totalVendas <- totalVendas + 1
totalPecas <- totalpecas + qtdDesejada
faturamentpTotal <- faturtamentoTotal + (qtdDesejada * preco[i])
fimse
fimse
caso 3
se cadastrado = falso entao
escreval("")
escreval("Atenção: Nenhum produto cadastrado ainda!")
senao
escreval("")
escreval("---Consulta de estoque---")
escreval("Cod / Nome / Preco / Qtd / Situacao")
escreval("")
para i de 1 ate 5 faca
escreva(cod[i]:3, "/", nome[i]:11, "/"R$, preco[i]:7:2, "/", estoq[i]:3, "/")
se est[i] = 0 entao
escreval("Sem Estoque!")
senao
escreval("Estoque Normal")
fimse
fimse
fimpara
caso 4
escreval("---Relatorio de vendas---")
escreval("Total de vendas realizadas: ", totalVendas)
escreval("Total de produtos vendidos: ", totalPecas)
escreval("valor total arrecadado: R$ ", faturamentoTotal:2:2)

se totalVendas > 0 entao
escreval ("Media: R$ ", (faturamentoTotal/ totalVendas):2:2)
senao
escreval("Valor medio das vendas: R$0,00")
fimse
caso 5
escreval("---Relatorio Geral Matriz")
escreval("Prod / D1 / D2 / D3 / Total Vendido")
escreval("")
para i de 1 ate 5 faca
escreval(nome[i]:10, "/", matrizVendas[i,1]:5, "/", matrizVendas[i,2]:5, "/", matrizVendas[i,3]:5, "/"< totProdVendidos[i,]:13)
fimpara
escreval("Total Geral de Produtos Comercializado: ", totalPecas)
caso 6
escreval("")
escreval("Encerrando o Sistema!")

fimescolha
fimpara
Fimalgoritmo