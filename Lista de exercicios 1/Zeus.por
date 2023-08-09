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
// 3- Abre loop do menu inicial que irá rodar enquanto o numero inserido nao for válido.
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
//
// 6- Abrir loop para menu dos resultados;
// 	6.1- Recebe a operaçao a ser realizada.
//	6.2- Efetua o calculo e exibe o resultado de acordo com a operacao selecionada.
//	6.3- Opcao para escolher outros numeros.
//	6.4- Menu final
//		6.4.1- Deseja sair? sim ou nao.
// 7- Exibir mensagem de programa encerrao!
//
// FIM


//BUGS
//1- Receber e exibir numeros decimais.
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
			menuFinal // opcoes do menu final
		
		logico validacao //validacao do numero inserido
			
		//validacao do numero inserido
		cadeia n1cadeia, n2cadeia, alfabeto[76] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", 
											"k", "l", "m", "n", "o", "p", "q", "r", "s", "t", 
											"u", "v", "w", "x", "y", "z",
											"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", 
											"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", 
											"U", "V", "W", "X", "Y", "Z",
											"!", "@", "#", "$", 
											"%", "&", "*", "(", ")", "_", "+", "=","[", "]", 
											"{", "}", ";", ",", ".", "/", "?", "~", " ", ""}
							
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
			para(inteiro i = 0; i < 76; i++){
				/*
				Nesse loop iremos percorrer toda o vetor alfabeto 
				verificando letra por letra e comparando com o valor inserido.
				*/
				se(txt.posicao_texto(alfabeto[i], n1cadeia, 0) >= 0 ou txt.posicao_texto(alfabeto[i], n2cadeia, 0) >= 0 ){
					validacao = falso
					
					se(txt.posicao_texto(alfabeto[i], n1cadeia, 0) == 1 ou txt.posicao_texto(alfabeto[i], n2cadeia, 0) == 1){
						se(alfabeto[i] == "."){
							validacao = verdadeiro
						}
					}
				}
				/*
				Nesse caso, a funcao posicao_texto() compara se 
				a cadeia inserida pelo usuario existe no indice atual do vetor alfabeto.
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

		
		//MENU DOS RESULTADOS
		//Exibe os resultados de acordo com a operacao selecionado
		faca{

			// TELA DA OPERACAO
			
			//exibe os numeros escolhidos
			escreva("Números escolhidos: ", n1inteiro, " e ", n2inteiro, "\n\n")
			
			
			
			//escolha da operacao
			escreva("Digite a operação que deseja realizar: \n1. Soma\n2. Subtração\n3. Multiplicação\n4. Divisão\n5. Escolher outros números\n")
			leia(operador)
			limpa()


			// TELA FINAL
			escolha(operador){

				//a funcao t.real_para_inteiro() converte para inteiro na hora de imprimir na tela
				
				caso 1: //SOMA
					soma = n1 + n2
					escreva("A soma de ", n1inteiro, " e ", n2inteiro, " é igual a ", t.real_para_inteiro(soma), "\n\n")					
				pare
				caso 2: // SUBTRACAO
					subtracao = n1 - n2
					escreva("A subtração de ", n1inteiro, " e ", n2inteiro, " é igual a ", t.real_para_inteiro(subtracao), "\n\n")
				pare
				caso 3: // MULTIPLICACAO
					multiplicacao = n1 * n2
					escreva("A multiplicação de ", n1inteiro, " e ", n2inteiro, " é igual a ", t.real_para_inteiro(multiplicacao), "\n\n")
				pare
				caso 4: //DIVISAO
					divisao = n1 / n2
					// divisao por zero
					se(n2 == 0){
						escreva("Nenhum número pode ser dividido por zero\n\n")
					}
					senao{		
						escreva("A divisão de ", n1inteiro, " por ", n2inteiro, " é igual a ", t.real_para_inteiro(divisao), "\n\n")
					}
				pare
				caso 5: //ESCOLHER OUTROS NUMEROS
					inicio()
				pare	
			}
			
			// MENU FINAL
			escreva("Deseja fazer outra operação?\n1- Sim\n2- Não\n")
			leia(menuFinal)
			limpa()
		}enquanto(menuFinal == 1)

		escreva("Programa encerrado. Volte sempre!\n\n")
		u.aguarde(2000)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2876; 
 * @DOBRAMENTO-CODIGO = [148, 132];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alfabeto, 58, 29, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */