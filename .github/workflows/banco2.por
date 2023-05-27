programa {
		funcao inicio()	{
		algoritmo "Banco"

// 1 - Apenas um cliente por execução;
// Neste projeto, consideraremos apenas um cliente por vez.

var
    caracter nomeTitular
    inteiro agencia,  numeroConta, digitoVerificador
    real saldoCC, saldoCP

// Entrada de dados do usuário
    escreva("Bem-vindo(a) ao OnésimoBankGroup! \n")    

CriarContaCorrente(real depositoInicial ) 
inicio
    // 2 - Ao criar conta corrente, obrigatório perguntar se deseja realizar depósito inicial
    // e criar automaticamente conta poupança;
    escreva("Digite o nome do titular da conta: ")
    leia(nomeTitular)
    
    escreva("Digite a agência: ")
    leia(agencia)
    
    escreva("Digite o número da conta: ")
    leia(numeroConta)
    
    escreva("Digite o dígito verificador: ")
    leia(digitoVerificador)
    
    saldoCC <- depositoInicial
    
    escreva("Deseja criar uma conta poupança? (S/N): ")
    leia
    se  ("S") {
      entao
       } saldoCP <- 0.0
    
    retorne saldoCC
fimfuncao

procedimento RealizarSaque real valor 
inicio
    // 5 - Operações na CC: saque, depósito e exibir conta;
    se (valor <= saldoCC) {
    	entao
    
        saldoCC <- saldoCC - valor
        escreva("Saque realizado com sucesso.")
}senao
        escreva("Saldo insuficiente para realizar o saque.")
fimprocedimento

procedimento RealizarDeposito real valor
inicio
    // 5 - Operações na CC: saque, depósito e exibir conta;
    saldoCC <- saldoCC + valor
    escreva("Depósito realizado com sucesso.")
fimprocedimento

procedimento ExibirContaCorrente()
inicio
    // 5 - Operações na CC: saque, depósito e exibir conta;
    escreva("Nome do titular: ", nomeTitular)
    escreva("Agência: ", agencia)
    escreva("Número da conta: ", numeroConta)
    escreva("Dígito verificador: ", digitoVerificador)
    escreva("Saldo em conta corrente: ", saldoCC)
fimprocedimento
}
funcao real AplicarPoupanca (real valor)
{
inicio
    // 6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
    saldoCP <- saldoCP + valor
    escreva("Valor aplicado na poupança com sucesso.")
    
    retorne saldoCP
fimfuncao

procedimento real RealizarResgate real valor
inicio
    // 6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
    se (valor <= saldoCP) { entao
        saldoCP <- saldoCP - valor
        escreva("Resgate realizado com sucesso.")
    }senao
        escreva("Saldo insuficiente para realizar o resgate.")
fimprocedimento

procedimento ExibirContaPoupanca()
inicio
    // 6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
    escreva("Nome do titular: ", nomeTitular)
    escreva("Agência: ", agencia)
    escreva("Número da conta poupança: ", numeroConta)
    escreva("Dígito verificador: ", digitoVerificador)
    escreva("Saldo em conta poupança: ", saldoCP)
fimprocedimento

// 3 - Necessário saldo para transferência entre contas;
procedimento real RealizarTransferencia  real valor
inicio
    se (valor <= saldoCC) {
    	entao
    
        saldoCC <- saldoCC - valor
        saldoCP <- saldoCP + valor
        escreva("Transferência realizada com sucesso.")
    
    }senao{ 
        escreva("Saldo insuficiente para realizar a transferência.")
    
fimprocedimento

// 7 - Comentar todo trecho do código.
inicio
    // Aqui você pode chamar as funções e procedimentos para realizar as operações desejadas.
fimalgoritmo

	}
}
