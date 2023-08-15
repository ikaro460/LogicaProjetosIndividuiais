/*
		Escreva um algoritmo que leia uma sequência de números do usuário e
	realize a soma desses números. Encerre a execução quando um número
	negativo for digitado.

PASSO A PASSO
1. Receber uma sequencia de números
2. Adicionar numeros ao vetor
3. Criar laço de repeticao para percorrer a sequencia de numeros
	3.1. Somar numeros a soma
	3.2. Exibir numeros inseridos
4. Exibir a soma

*/


programa
{

	inclua biblioteca Util --> u

	inteiro numeros[5], soma = 0
	logico numeroNegativo = falso

	funcao receberNumeros(){
		inteiro n
		
		para(inteiro i = 0; i < 5; i++){
			escreva("Insira um número: ")
			leia(n) 
			numeros[i] = n
			soma += n
			limpa()

			se(n < 0){
				numeroNegativo = verdadeiro
			}
		}
	}

	funcao escreverNumeros(){
		escreva("Numeros inseridos:\n")
		para(inteiro i = 0; i < 5; i++){
			escreva(numeros[i], "  ")
		}
	}
	
	funcao inicio()
	{
		faca{
			inteiro opc
			
			receberNumeros()
			
			se(numeroNegativo == falso){
				escreverNumeros()
				escreva("\n\nSoma: ", soma)
				escreva("\n\n1. Voltar\n")
				leia(opc)
				limpa()
			}
		}enquanto(numeroNegativo == falso)

		escreva("Número negativo inserido!")
		u.aguarde(2000)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @DOBRAMENTO-CODIGO = [24, 40];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */