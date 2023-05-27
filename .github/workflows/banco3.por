programa {
  funcao inicio() {
   algoritmo Banco

// Declaração das variáveis
var
    nomeTitular: caractere
    agencia, numeroConta, digitoVerificador: inteiro
    saldoCC, saldoCP: real

// Inicialização dos saldos
saldoCC <- 0.0
saldoCP <- 0.0

// Solicitação dos dados do cliente
escreva("Digite o nome do titular da conta: ")
leia(nomeTitular)

escreva("Digite o número da agência: ")
leia(agencia)

escreva("Digite o número da conta: ")
leia(numeroConta)

escreva("Digite o dígito verificador: ")
leia(digitoVerificador)

// Criar conta poupança automaticamente
escreva("Deseja realizar um depósito inicial? (S/N): ")
leia(opcaoInicial)

se opcaoInicial = "S" ou opcaoInicial = "s" entao
    escreva("Digite o valor do depósito inicial: ")
    leia(valorInicial)

    // Validar o valor inicial
    se valorInicial > 0 entao
        saldoCC <- valorInicial
        saldoCP <- valorInicial

        escreva("Conta corrente e poupança criadas com sucesso!")
    senao
        escreva("O valor inicial precisa ser maior que zero!")
    fimse
fimse

// Função para exibir os dados da conta corrente
funcao exibirContaCorrente()
    escreva("Conta corrente:")
    escreva("Titular: ", nomeTitular)
    escreva("Agência: ", agencia)
    escreva("Número da conta: ", numeroConta)
    escreva("Dígito verificador: ", digitoVerificador)
    escreva("Saldo: R$", saldoCC)
fimfuncao

// Função para exibir os dados da conta poupança
funcao exibirContaPoupanca()
    escreva("Conta poupança:")
    escreva("Titular: ", nomeTitular)
    escreva("Agência: ", agencia)
    escreva("Número da conta: ", numeroConta)
    escreva("Dígito verificador: ", digitoVerificador)
    escreva("Saldo: R$", saldoCP)
fimfuncao

// Função para realizar um saque na conta corrente
funcao sacarContaCorrente(valor: real)
    se valor > 0 e valor <= saldoCC entao
        saldoCC <- saldoCC - valor
        escreva("Saque realizado com sucesso!")
    senao
        escreva("Saldo insuficiente para o saque!")
    fimse
fimfuncao

// Função para realizar um depósito na conta corrente
funcao depositarContaCorrente(valor: real)
    se valor > 0 entao
        saldoCC <- saldoCC + valor
        escreva("Depósito realizado com sucesso!")
    senao
        escreva("O valor do depósito precisa ser maior que zero!")
    fimse
fimfuncao

// Função para aplicar na conta poupança
funcao aplicarContaPoupanca(valor: real)
    se valor > 0 entao
        saldoCP <- saldoCP + valor
        escreva("Aplicação realizada com sucesso!")
    senao
        escreva("O valor da aplicação precisa ser maior que zero!")
    fimse
fimfuncao

// Função para resgatar da conta poupança
funcao resgatarContaPoupanca(valor: real)
    se valor > 0 e valor <= saldoCP entao
        saldoCP <- saldoCP - valor
        escreva("Resgate realizado com sucesso!")
    senao
        escreva("Saldo insuficiente para o resgate!")
    fimse
fimfuncao

// Menu de operações
escreva("Bem-vindo(a), ", nomeTitular)
escreva("Escolha uma das opções:")
escreva("1 - Sacar da conta corrente")
escreva("2 - Depositar na conta corrente")
escreva("3 - Exibir conta corrente")
escreva("4 - Aplicar na conta poupança")
escreva("5 - Resgatar da conta poupança")
escreva("6 - Exibir conta poupança")
escreva("7 - Sair")

escreva("Digite a opção desejada: ")
leia(opcao)

escolha "opcao"
    caso 1
        escreva("Digite o valor a sacar: ")
        leia(valorSaque)
        sacarContaCorrente(valorSaque)
    caso 2
        escreva("Digite o valor a depositar: ")
        leia(valorDeposito)
        depositarContaCorrente(valorDeposito)
    caso 3
        exibirContaCorrente()
    caso 4
        escreva("Digite o valor a aplicar na poupança: ")
        leia(valorAplicacao)
        aplicarContaPoupanca(valorAplicacao)
    caso 5
        escreva("Digite o valor a resgatar da poupança: ")
        leia(valorResgate)
        resgatarContaPoupanca(valorResgate)
    caso 6
        exibirContaPoupanca()
    caso 7
        escreva("Obrigado por utilizar nossos serviços. Volte sempre!")
    caso contrario
        escreva("Opção inválida!")
fimescolha

fimalgoritmo
 
  }
}
