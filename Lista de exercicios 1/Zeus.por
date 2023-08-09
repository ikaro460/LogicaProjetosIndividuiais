//ZEUS - CALCULADORA
//
//PASSO A PASSO
//
// 1- Incluir bibliotecas Tipos, Texto e Util 
// 2- Declaracao de variaveis
// 	2.1- Declarar variaveis reais: n1, n2, subtracao, multiplicacao e divisao
//	2.2- Declarar variaveis inteiras: operador, validacao e menuFinal
//	2.3- Declarar variaveis cadeia:  n1cadeia, n2cadeia e alfabeto.
//
// 3- MENU INICIAL - Abre loop do menu inicial que irá rodar enquanto o numero inserido nao for válido.
//	3.1- Atribui o valor verdadeiro a variavel validacao.
//	3.2- Recebe numeros inseridos pelo usuario.
//	3.3- Percorre o vetor alfabeto comparando os valores inseridos.
//		3.3.2- Se o valor inserido conter o valor do vetor, atribuir falso ao valor da validacao.
//		3.3.3- Criar condicao para caso o numero seja decimal.
//	3.4- Se o numero nao for validado, retorna mensagem de erro.
//
// 5- Converter os tipos dos valores inseridos.
//	5.1- Converter cadeia para real.
//	5.2- Converter real para inteiro.
//	5.3- Criar n1Tela e n2Tela que ira testar se os valores inseridos contem casas decimais relevantes a serem exibidas.
//
// 6- MENU DOS CALCULOS - Abrir loop para menu com escolhas de operacoes;
// 	6.1- Recebe a operaçao a escolhida.
//	6.2- Criar uma alternativa para trocar os numeros escolhidos(Voltar ao menu inicial).
//	6.3- Efetua o calculo e exibe o resultado de acordo com a operacao selecionada.
//	6.4- Menu final
//		6.4.1- Deseja realizar outra operacao? sim ou nao.
// 7- MENU FINAL - ainda dentro do loop do menu dos calculos
//	7.1- Deseja realizar outra operacao:
//		7.1.1- Sim: Ler menuFinal[0] = 1
//		7.1.2- Nao: Ler menuFinal[0] = 2
//	7.1- Deseja sair da calculadora:
//		7.1.1- Sim: Ler menuFinal[1] = 1
//		7.1.2- Não: Ler menuFinal[1] = 2
//		7.1.3- Voltar ao menu inicial: ler menuFinal[1] = 3
// 8- Verifica opcao escolhida no ultimo menu e encerra ou reinicia o programa.
//
// FIM


//BUGS
//1- Receber e exibir numeros decimais. RESOLVIDO
//2- Tratar opcoes invalidas no menu de operacoes.

programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	
	funcao inicio()
	{

		//DECLARACAO DE VARIAVEIS
		
		//declara os numeros que serao inseridos e os respectivos resultados
		real n1, n2, soma, subtracao, multiplicacao, divisao
		
		inteiro operador, //inteiro utilizado para escolher operacao a ser executada
			menuFinal[2] = {1,2} // opcoes do menu final
		
		logico validacao //validacao do numero inserido
			
		//validacao do numero inserido
		const inteiro TAMANHO_DO_ALFABETO = 74
		cadeia n1cadeia, n2cadeia, alfabeto[TAMANHO_DO_ALFABETO] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", 
														"k", "l", "m", "n", "o", "p", "q", "r", "s", "t", 
														"u", "v", "w", "x", "y", "z",
														"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", 
														"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", 
														"U", "V", "W", "X", "Y", "Z",
														"!", "@", "#", "$", 
														"%", "&", "*", "(", ")", "_", "+", "=","[", "]", 
														"{", "}", ";", ",", "/", "?", "~", " "}
							
		// MENU INICIAL
		
		faca{
			//inicializando variavel validacao
			validacao = verdadeiro

			//mensagem de boas vindas
			escreva("************************\n\n")
			escreva("Bem vindo a calculadora!\n\n")
			escreva("************************\n\n\n")

			//Pede os numeros ao usuario
			escreva("Digite o primeiro número: ")
			leia(n1cadeia) 
			escreva("Digite o segundo número: ")
			leia(n2cadeia)
			limpa()

			//verifica se o valor inserido é uma letra
			para(inteiro i = 0; i < TAMANHO_DO_ALFABETO; i++){
				/*
				Nesse loop iremos percorrer toda o vetor alfabeto 
				verificando letra por letra e comparando com o valor inserido.
				
				Obs: O caractere "." e um caractere válido, portanto e necessario
				uma condicional apenas para verificar se o usuario inseriu "."
				sem nenhum numero apos ou antes.
				*/
				se(n1cadeia == "." ou n2cadeia == "." ou n1cadeia == "" ou n1cadeia == ""){
					//Esse bloco verifica se o texto inserido ".", visto que o ponto é um caractere valido.
					validacao = falso
					pare	
				}senao se(txt.posicao_texto(alfabeto[i], n1cadeia, 0) >= 0 ou txt.posicao_texto(alfabeto[i], n2cadeia, 0) >= 0 ){
					//Esse bloco verifica se contem alguma letra nos valores inseridos
					validacao = falso
				}
				/*
				A funcao posicao_texto() compara se a cadeia 
				inserida pelo usuario existe no indice atual do vetor alfabeto.
				*/
				
			}

			// Verifica se o numero foi validado
			se(validacao == falso){
				escreva("Número inválido!")
				u.aguarde(2000)
				limpa()
			}
		
		}enquanto(validacao == falso) // quando numero for validado sai do loop

		
		//CONVERSÃO DOS TIPOS DOS VALORES INSERIDOS


		//converte pra real
		n1 = t.cadeia_para_real(n1cadeia)
		n2 = t.cadeia_para_real(n2cadeia)
		
		//converte pra inteiro
		inteiro n1inteiro, n2inteiro
		n1inteiro = t.real_para_inteiro(n1)
		n2inteiro = t.real_para_inteiro(n2)

		
		// MENU DOS CALCULOS
		
		//Exibe os resultados de acordo com a operacao selecionado
		faca{

			// TELA DA OPERACAO
			
			//Verificando se contem numeros decimais e declarando valor que será exibido
			cadeia n1Tela, n2Tela

			//verifica numero 1
			se(n1 == n1inteiro){
				n1Tela = t.inteiro_para_cadeia(n1inteiro, 10)
			}senao{
				n1Tela = t.real_para_cadeia(n1)
			}

			//verifica numero 2
			se(n2 == n2inteiro){
				n2Tela = t.inteiro_para_cadeia(n2inteiro, 10)
			}senao{
				n2Tela = t.real_para_cadeia(n2)
			}
			
			//exibe os numeros escolhidos
			escreva("Números escolhidos: ", n1Tela, " e ", n2Tela, "\n\n")
			
			
			
			//escolha da operacao
			escreva("Digite a operação que deseja realizar: \n1. Soma\n2. Subtração\n3. Multiplicação\n4. Divisão\n5. Escolher outros números\n")
			leia(operador)
			limpa()


			// TELA FINAL
			escolha(operador){

				//a funcao t.real_para_inteiro() converte para inteiro na hora de imprimir na tela
				
				caso 1: // SOMA
					soma = n1 + n2

					//Verifica se resultado tem valores decimais
					se(t.real_para_inteiro(soma) == soma){
						escreva("A soma de ", n1Tela, " + ", n2Tela, " é igual a ", t.real_para_inteiro(soma), "\n\n")	
					}senao{
						escreva("A soma de ", n1Tela, " + ", n2Tela, " é igual a ", soma, "\n\n")		
					}	
									
				pare
				caso 2: // SUBTRACAO
					subtracao = n1 - n2

					//Verifica se resultado tem valores decimais
					se(t.real_para_inteiro(subtracao) == subtracao){
						escreva("A subtração de ", n1Tela, " - ", n2Tela, " é igual a ", t.real_para_inteiro(subtracao), "\n\n")	
					}senao{
						escreva("A subtração de ", n1Tela, " - ", n2Tela, " é igual a ", subtracao, "\n\n")		
					}
					
				pare
				caso 3: // MULTIPLICACAO
					multiplicacao = n1 * n2

					//Verifica se resultado tem valores decimais
					se(t.real_para_inteiro(multiplicacao) == multiplicacao){
						escreva("A multiplicação de ", n1Tela, " * ", n2Tela, " é igual a ", t.real_para_inteiro(multiplicacao), "\n\n")	
					}senao{
						escreva("A multiplicação de ", n1Tela, " * ", n2Tela, " é igual a ", multiplicacao, "\n\n")		
					}
				pare
				caso 4: // DIVISAO
					divisao = n1 / n2
					// divisao por zero
					se(n2 == 0){
						escreva("Nenhum número pode ser dividido por zero\n\n")
					}
					
					//Verifica se resultado tem valores decimais
					senao se(t.real_para_inteiro(divisao) == divisao){
						escreva("A divisão de ", n1Tela, " / ", n2Tela, " é igual a ", t.real_para_inteiro(divisao), "\n\n")	
					}senao{
						escreva("A divisão de ", n1Tela, " / ", n2Tela, " é igual a ", divisao, "\n\n")		
					}
					
				pare
				caso 5: //ESCOLHER OUTROS NUMEROS
					inicio()
				pare	
			}
			
		// MENU FINAL
		
			escreva("Deseja fazer outra operação?\n1- Sim\n2- Não\n")
			leia(menuFinal[0])	
			limpa()
			se(menuFinal[0] != 1){
				escreva("Sair da calculadora?\n1- Sim\n2- Não\n3- Voltar ao menu inicial")
				leia(menuFinal[1])
				limpa()	
			}

			
		}enquanto(menuFinal[0] == 1 ou menuFinal[1] == 2)

		//Verifica a opcao escolhida acima
		se(menuFinal[1] == 3){
			inicio()
		}senao{
			escreva("Programa encerrado. Volte sempre!\n\n")
		}
		u.aguarde(2000)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1856; 
 * @DOBRAMENTO-CODIGO = [67];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */