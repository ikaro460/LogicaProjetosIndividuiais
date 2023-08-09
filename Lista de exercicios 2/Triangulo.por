// TRIÂNGULO
//
/*
	IMPORTANTE: A soma de todos os angulos de um triangulo sempre e igual a 180. Dito isso:
	
	Triangulo acutangulo: todos os angulos internos sao agudos, isto e, as medidas dos angulos sao menores do que 90.
	Exemplos: 
		- 50, 50, 80
		- 60, 60, 60
		- 70, 70, 40

	Triangulo obtusangulo: um angulo interno e obtuso, isto e, possui um angulo com medida maior do que 90.
	Exemplos:
		- 100, 60, 20
		- 110, 60, 10
		- 140, 20, 20

	Triangulo retangulo: possui um angulo interno reto (90 graus).
	Exemplos:
		- 90, 30, 60
		- 90, 45, 45
		- 90, 53, 37

*/
//	PASSO A PASSO
//
//	1- Declarar um vetor inteiro para os angulo.
//	2- Pedir e receber os valores dos angulos.
//	3- Verificar classificacao do triangulo de acordo com os valores inseridos.
//		3.1- Acutangulo - (angulo1 < 90 e angulo2 < 90 e angulo3 < 90).
//		3.2- Obtusangulo - (angulo1 > 90 ou angulo2 > 90 ou angulo3 > 90).
//		3.3- Retangulo - (angulo1 == 90 ou angulo2 == 90 ou angulo3 == 90).
//		3.4- Verificar se valores inseridos são válidos.
//	4- Escrever angulos e classificacao.

programa
{
	funcao inicio ()
	{
		inteiro angulos[3] = {0,0,0}
		cadeia resultado = "Acutângulo" //Se nenhum angulo for maior ou igual a 90, só pode ser um acutangulo.
		inteiro soma = 0 //Verifica se os angulos somam 180.

		// Recebe os angulos
		escreva("Digite o primeiro ângulo: " )
		leia(angulos[0])
		escreva("\nDigite o segundo ângulo: " )
		leia(angulos[1])
		escreva("\nDigite o primeiro ângulo: " )
		leia(angulos[2])
		limpa()

		//Classificando o triangulo
		para(inteiro i = 0; i < 3; i++){
			escreva("Ângulo ", i+1, ": ", angulos[i], "\n") //Escreve os angulos na tela
			soma = soma + angulos[i] //soma o angulo

			//Verifica se e obtusangulo ou retangulo, se nao for, só pode ser acutangulo
			se(angulos[i] > 90){
				resultado = "Obtusângulo"	
			}senao se(angulos[i] == 90){
				resultado = "Retângulo"	
			}
			
		}
		
		se(soma == 180){ //Verifica se os valores inseridos correspondem a um triangulo valido
			escreva("Seu triângulo é um ", resultado, "!\n\n")	
		}senao{
			escreva("\nValores inválidos!\n")	
			escreva("Soma dos ângulos: ", soma, "\n")
		}
		
		
		
		/*

		SEGUE ABAIXO OUTRO EXEMPLO UTILIZANDO APENAS CONDICIONAIS
		
		se(angulos[0] + angulos[1] + angulos[2] == 180){
			// So entra aqui se os angulos somarem 180.
			se(angulos[0] < 90 e angulos[1] < 90 e angulos[2] < 90){
				//Acutangulo
				escreva("Ângulo 1: ", angulos[0],"°, Ângulo 2: ", angulos[1], "°, Ângulo 3: ", angulos[2], "\n")
				escreva("Seu triangulo é um Acutângulo!\n")
			}senao se(angulos[0] > 90 ou angulos[1] > 90 ou angulos[2] > 90){
				//Obtusangulo
				escreva("Ângulo 1: ", angulos[0],"°, Ângulo 2: ", angulos[1], "°, Ângulo 3: ", angulos[2], "\n")
				escreva("Seu triangulo é um Obtusângulo!\n")
			}senao se(angulos[0] == 90 ou angulos[1] == 90 ou angulos[2] == 90){
				//Retangulo
				escreva("Ângulo 1: ", angulos[0],"°, Ângulo 2: ", angulos[1], "°, Ângulo 3: ", angulos[2], "\n")
				escreva("Seu triangulo é um Retângulo!\n")
			}
		}senao{
			escreva("Valores inválidos!")	
		}
		
		*/


		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2057; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */