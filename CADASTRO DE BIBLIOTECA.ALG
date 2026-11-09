Algoritmo "Cadastro de Biblioteca"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/11/2026
Var
// Seção de Declarações das variáveis 
codigosLivros: vetor[1..8] de inteiro
titulosLivros: vetor[1..8] de caracter
qtdLivros: vetor[1..8] de inteiro
idsleitores: vetor[1..5] de inteiro
nomesLeitores: vetor[1..5] de caracter
emprestimosAtuais: vetor[1..5] de inteiro
opcao, i, j: inteiro
idBusca, codigoBusca: inteiro
livrosCadastrados, leitoresCadastrados: logico
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
livrosCadastrados <- falso
leitoresCadastrados <- falso

para i de 1 ate 5 faca
emprestimosAtuais[i] <- 0
idsleitores[i] <- 0
fimpara

escreval("====SISTEMA DE GERENCIAMENTO DE BIBLIOTECA====")
escreval("1. Cadastar Livros")
escreval("2. Cadastar Leitores")
escreval("3. Registrar Emprestimo")
escreval("4. Registar Devolução")
escreval("5. Consultar Livros Disponiveis")
escreval("6. Exibir Relatorio de Emprestimos")
escreval("7. Sair do Sistema")
escreval("")
escreva("Escolha uma Opção: ")
leia(opcao)

escolha opcao
caso 1
escreval("----CADASTRO DE LIVROS (8 lIVROS)----")
para i de 1 ate 8 faca
escreval("")
escreval("Digite o codigo do livro", i, ": ")
leia(codigosLivros[i])
escreval("Digite o titulo do livro", i, ": ")
leia(titulosLivros[i])
escreval("Digite a quantidade de exemplares: ")
leia(qtdLivros[i])
fimpara
livrosCadastrados <- verdadeiro
escreval("")
escreval("Livros cadastrados com sucesso!")
escreval("Precione ENTER para continuar...")
leia(i)

caso 2
se (nao livrosCadastrados) entao
escreval("[Aviso] Voce precisa cadastrar os livros primeiro (opcao 1)!")
senao
escreval("---Cadastro de Leitores (5 leitores)---")
para i de 1 ate 5 faca
escreval("")
escreval("Digite o id do leitor", i, ": ")
leia(idsleitores[i])
escreval("Digite o nome do leitor", i, ": ")
leia(nomesleitores[i])
emprestimosAtuais[i] <- 0
fimpara
leitoresCadastrados <- verdadeiro
escreval("")
escreval("Leitores cadastrados com sucesso!")
fimse
escreval("Precione ENTER para continuar...")
leia(i)

caso 3
se (nao livrosCadastrados) ou (nao leitoresCadastrados) entao
escreval("[Aviso] Cadastro de Livros ou Leitores Incompletos!")
senao
escreval("---REGISTRAR EMPRESTIMO---")
escreval("Digite o id do leitor: ")
leia(idBusca)

posleitor <- 0
para i de 1 ate 5 faca
se (idsleitores[i] = idBusca) entao
posleitor <- i
fimse
fimpara
se (posleitor = 0) entao
escreval("[Erro] Livro não encontrado!")
senao
escreva("Digite codigo do livro a ser encontrado!")
leia(codigoBusca)
posLivro <- 0
para i de 1 ate 8 faca
se (codigolivros[i] = codigoBusca) entao
posLivro <- i
fimse
fimpara

se (posLivro = 0) entao
escreval("[Erro] Livro não encontrado!")
senao
se (emprestimosAtuais[posleitor] <= 0) entao
escreval("[Erro] Esse leitor não possui emprestimos ativos para devolver")
senao
qtdLivros[poslivro] <-  qtdLivros[poslivro] + 1
emprestimosAtuais[posleitor] <-  emprestimosAtuais[posleitor] - 1
escreval("")
escreval("Devolução realizada. Estoque Atualizado")
fimse
fimse
escreval("")
escreval("Precione ENTER para continuar...")
leia(i)

caso 5
se (nao livrosCadastrados) entao
escreval("[Aviso] Nenhum livro cadastrado!")
senao
escreval("Livros disponiveis no acervo")
escreval("CODIGO/t TITULO/ t/t QTD DISPONIVEL")
para i de 1 ate 8 faca
escreval(cogigoaLivros[i], "/t/t", titulosLivros[i], "/t/t", qtdLivros[i])
fimpara
fimse
escreval("")
escreval("Precione ENTER para continuar...")
leia(i)

caso 6
escreval("---RELATORIO DE EMPRESTIMOS ATUAIS---")
para i de 1 ate 5 faca
se (idsleitores[i] <> 0) entao
escreval("Leitor: ", nomesLeitores[i], " / Emprestimos Ativos:", emprestimosAtuias, " /3")
fimse
fimpara
escreval("")
escreval("Precione ENTER para continuar...")
leia(i)

caso 7
escreval("Saindo do sistema... Até logo!")

outrocaso
escreval("[Erro] Opção Invalida! Escolha ente 1 e 7.")
escreval("Precione ENTER para continuar...")
leia(i)
fimescolha
Fimalgoritmo