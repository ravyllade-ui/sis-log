Algoritmo "Controle-Financeiro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2026
Var
// Seção de Declarações das variáveis 
financeiro: vetor [1..3, 1..2] de real
saldo: vetor [1..3] de real
i: inteiro
totalEntradas, totalDespesas, saldoFinal: real
maiorSaldo: real
mesMaiorSaldo: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
totalEntradas <- 0
totalDespesas <-0
escreval("===CONTROLE FINANCEIRO===")
para i de 1 ate 3 faca
escreval("")
escreval("MES", i)
escreva("Informe o valor das entradas: R$ ")
leia (financeiro[i,1])
escreva("Informe o valor das despesas: R$ ")
leia (financeiro[i,2])
saldo[i] <- financeiro[i,1] - financeiro[i,2]
totalEntradas <- totalEntradas + financeiro[i,1]
totalDespesas <- totalDespesas + financeiro[i,2]
fimpara
escreval("")
escreval("===RELATORIO FINANCEIRO===")
para i de 1 ate 3 faca
escreval("MES", i)
escreval("Entradas: R$ ", financeiro[i,1]:0:2)
escreval("Despesas: R$ ", financeiro[i,2]:0:2)
escreval("Saldo: R$ ", saldo[i]:0:2)
escreval("------------------------------------")
fimpara

saldoFinal <- totalEntradas - totalDespesas

maiorSaldo <- saldo[1]
mesMaiorSaldo <- 1

para i de 1 ate 2 faca

se saldo[i] > maiorSaldo entao
maiorSaldo <- saldo[i]
mesMaiorSaldo <- i
fimse
fimpara

escreval("")
escreval("===RESUMO GERAL===")

escreval("Total Entradas: R$ ", TotalEntradas:0:2)
escreval("Total Despesas: R$ ", totalDespesas:0:2)
escreval("Saldo Final: R$ ", saldoFinal:0:2)
escreval("Mes com maior saldo: ", mesMaiorSaldo)
escreval("Maior saldo:R$ ", maiorSaldo:0:2)
Fimalgoritmo