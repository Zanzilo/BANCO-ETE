programa
{
	
	//INCLUSÃO DA BIBLIOTECA UTIL PARA SORTEIO DO NUMERO DA CONTA
	inclua biblioteca Util --> u
	//DECLARAÇÃO DE VARIAVEIS
	cadeia usuario
	inteiro opcao, agencia, conta, digitoCc, digitoCp, inicial
	real deposito, contaCorrente = 0.0, contaPoupanca = 0.0, saque, aplicar, resgatar
	logico contaAberta = falso
	funcao inicio()
	{
		logico banco = verdadeiro
		 
		
		faca
		{
			
			
	//IMPLEMENTAÇÃO DO MENU DO BANCO		
			escreva("----------------------------------------","\n")
			escreva("---      Bem vindo ao Banco ETE      ---","\n")
			escreva("---        O que deseja fazer        ---","\n")
			escreva("----------------------------------------","\n")
			escreva("- 1 Abrir Conta                        -","\n")
			escreva("- 2 Realizar Deposito                  -","\n")
			escreva("- 3 Realizar Saque                     -","\n")
			escreva("- 4 Aplicar na Poupança                -","\n")
			escreva("- 5 Resgatar da Poupança               -","\n")
			escreva("- 6 Exibir Conta                       -","\n")
			escreva("- 7 sair                               -","\n")
			escreva("----------------------------------------","\n")
			leia(opcao)

	//ENTRADA DE DADOS DO USUÁRIO E PROCESSAMENTO E SAIDA DE DADOS		
			escolha(opcao)
			{
				caso 1:
				escreva("Qual seu nome: ")
				leia(usuario)
				escreva("\n")
				agencia = 0001
				conta = u.sorteia(2000,3000)
				digitoCc = u.sorteia(1,9)
				digitoCp = u.sorteia(1, 9)
				contaAberta = verdadeiro
				enquanto( digitoCp == digitoCc)
				{
					digitoCp = u.sorteia(1, 9)
				}
				
				escreva("Deseja Realizar Depósito Inicial?","\n")
				escreva("- 1 para sim","\n")
				escreva("- 2 para não","\n")
				leia(inicial) 
				se (inicial == 1)
				{
					escreva("Qual o valor R$: ")
					leia(deposito)  
					contaCorrente = contaCorrente + deposito
				}
				escreva("Obrigado por abrir uma conta","\n")
				pare

				caso 2:
				se (contaAberta == falso)
				{
					escreva("Você ainda não possui uma conta","\n")
				}
				senao
				{
					escreva("Qual o valor do deposito R$: ")
					leia(deposito)
					contaCorrente = contaCorrente + deposito
					escreva("\n")
				}
				pare

				caso 3:
				se (contaAberta == falso)
				{
					escreva("Você ainda não possui uma conta","\n")
				}
				senao
				{
					escreva("Qual o valor do saque R$: ")
					leia(saque)
					escreva("\n")
					se ( saque > contaCorrente)
					{
						escreva("Saldo insuficiente","\n")
					}
					senao
					{
						contaCorrente = contaCorrente - saque
						escreva("você realizou um saque no valor de R$" + saque + "\n")
					}
					
				}
				pare

				caso 4:
				se (contaAberta == falso)
				{
					escreva("Você ainda não possui uma conta","\n")
				}
				senao
				{
					escreva("Qual o valor deseja aplicar R$: ")
					leia(aplicar)
					se (aplicar > contaCorrente)
					{
						escreva("Saldo insuficiente da Conta Corrente","\n")
					}
					senao
					{
						contaCorrente = contaCorrente - aplicar
						contaPoupanca = contaPoupanca + aplicar
						escreva("Você realizou uma aplicação na poupança no valor de R$" + aplicar + "\n")
					}
				}	
				pare

				caso 5:
				se (contaAberta == falso)
				{
					escreva("Você ainda não possui uma conta","\n")
				}
				senao
				{
					escreva("Qual valor deseja resgatar R$: ")
					leia(resgatar)
					se ( contaPoupanca < resgatar)
					{
						escreva("Saldo Insuficiente na poupança.","\n")
					}
					senao
					{
						contaCorrente = contaCorrente + resgatar
						contaPoupanca = contaPoupanca - resgatar
						escreva("Você realizou um resgate no valor de R$" + resgatar + "\n")
					}
				
					
				}
				pare

				caso 6:
				se (contaAberta == falso)
				{
					escreva("Você ainda não possui uma conta","\n")
				}
				se (contaAberta == verdadeiro)
				{
					escreva("Nome do Titular: " + usuario + "\n")
					escreva("Agência: " + agencia + "\n")
					escreva("Conta: "+ conta + "\n")
					escreva("Digito Conta Corrente: " + digitoCc + "\n")
					escreva("Digito Conta Poupança: " + digitoCp + "\n")
					escreva("Saldo na Conta Corrente R$"+ contaCorrente + "\n")
					escreva("Saldo na Conta Poupança R$"+ contaPoupanca + "\n")
				}

				pare

				caso 7:
				escreva("Obrigado por usar os serviços do Banco ETE")
				banco = falso
				pare
				
			}
		}
		enquanto(banco == verdadeiro)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */