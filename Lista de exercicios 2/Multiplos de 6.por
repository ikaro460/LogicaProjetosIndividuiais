//Multiplos de 6
/*
O sistema “Múltiplos de 6” irá pedir ao usuário um intervalo, maior que 100,
de valores inteiros. Após, irá somar os três primeiros com os três últimos
múltiplos de 6 desse intervalo. Ao final, imprime os múltiplos e o resultado
da soma.

PASSO A PASSO
	1- Declarar inteiros n1, n2, maiorNumero, menorNumero, contador, soma e uma matriz multiplos.
	2- Pedir para o usuario inserir 2 numeros com intervalo maior que 100.
	3- Definir maior e menor numero.
	4- Verificar se os numeros sao validos.
	5- Encontrar multiplos dentro do intervalo.
		5.1- Percorrer multiplos de 6 em ordem crescente do menorNumero até o maiorNumero.
			5.1.1- Inserir multiplos de 6 na primeira linha da matriz multiplos e somar 1 ao contador.
			5.1.2- Parar quando o contador chegar ao 3.
		5.2- Percorrer multiplos de 6 em ordem decrescente do maiorNumero até o menorNumero.
			5.2.1- Inserir multiplos de 6 na segunda linha da matriz multiplos e subtrair 1 do contador.
			5.2.2- Parar quando o contador chegar no zero.
	6- Somar todos os números da matriz multiplos.
	7- Imprimir todos os múltiplos e o resultado final.

*/

programa
{
	
	funcao inicio()
	{

		inteiro n1, n2, maiorNumero, menorNumero, contador = 0, soma = 0
		inteiro multiplos[2][3]={{0,0,0},{0,0,0}}

		escreva("Digite o primeiro número: ")
		leia(n1)
		limpa()
		escreva("Digite o segundo número: ")
		leia(n2)
		limpa()	

		// Definindo o maior e menor numero
		se(n1 > n2){
			maiorNumero = n1
			menorNumero = n2
		}senao{
			maiorNumero = n2
			menorNumero = n1
		}

		//Verificando se numeros sao validos
		se(maiorNumero - menorNumero <= 100){
			escreva("Números inválidos!")	
		}senao{
			//Encontrando multiplos dentro do intervalo
			escreva("Números inseridos: ", n1, " e ", n2)
			
			//3 primeiros
			para(inteiro i = menorNumero; i<=maiorNumero; i++){
				se(i % 6 == 0 e contador < 3){
					multiplos[0][contador] = i
					contador++
				}	
			}

			//Nesse momento o contador == 3
			
			//3 ultimos
			para(inteiro i = maiorNumero; i>=menorNumero; i--){
				se(i % 6 == 0 e contador > 0){
					multiplos[1][contador-1] = i
					contador--
				}	
			}

			//Percorrendo os multiplos encontrados
			para(inteiro i = 0; i < 2; i++){
				se(i == 0){ //os tres primeiros multiplos estao na linha 0 e os tres ultimos multiplos estao na coluna 1
					escreva("\n\nOs 3 primeiros múltiplos de 6 no intervalo são: \n")	
				}senao{
					escreva("\n\nOs 3 últimos múltiplos de 6 no intervalo são: \n")
				}
				
				// escreve os multiplos
				para(inteiro j = 0; j < 3; j++){
					escreva(multiplos[i][j], " ")
					soma = soma + multiplos[i][j]
				}	
			}

			escreva("\n\nA soma dos múltiplos é igual a: ", soma, "\n\n")
			escreva("**************************************************")
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */