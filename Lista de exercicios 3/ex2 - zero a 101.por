/*
		Faça um algoritmo que leia 20 números e, ao final, escreva quantos estão
	entre 0 e 100, quantos estão entre 101 e 200 e quantos são maiores de 200.

*/

//1. Criar contadores, vetor com 20 numeros e vetores auxiliares.
//2. Criar laço de repetição i < 20 para o vetor com 20 numeros
//	2.1. Se numero >= 0 e numero <= 100
//		2.1.1. primeiroContador++
//		2.1.2. Adicionar ao vetor de 0 a 100
//	2.2. Se numero >= 101 e numero <= 200
//		2.2.1. segundoContador++
//		2.2.2. Adicionar ao vetor de 101 a 200
//	2.3. Se numero > 200
//		2.3.1. terceiroContador++
//		2.1.2. Adicionar ao vetor de maiores que 200
//	2.4. Senao
//		2.4.1. quartoContador++
//		2.1.2. Adicionar ao vetor de negativos
//3. Exibir numeros na tela
//	3.1. Criar função de escrever vetor
//4. Exibir quantos estao entre 0 e 100
//5. Exibir quantos estao entre 101 e 200
//6. Exibir quantos sao maiores que 200
//7. Exibir quantos numeros sao negativos

programa
{
	inteiro primeiroContador = 0, 
			segundoContador = 0, 
			terceiroContador = 0, 
			quartoContador = 0
			
	const inteiro NUMEROS[20] = {12,125,35,69,584,256,23,154,25,1,
							48,365,96,56,65,84,985,555,65,6}

	inteiro NUMEROS_FILTRADOS[3][20]
	
	funcao escreverVetor(inteiro contador, inteiro aux){
		se(aux == 5){
			escreva("Todos os números: \n")
			para(inteiro i = 0; i < contador; i++){
				escreva(NUMEROS[i], "  ")
			}
			escreva("\n======================================================================================\n")
		}senao{
			para(inteiro i = 0; i < contador; i++){
				escreva(NUMEROS_FILTRADOS[aux][i], "  ")
			}
			escreva("\n\nContador: ",contador, "\n======================================================================================\n")
		}
	}
	
	funcao inicio()
	{
		//Criar laço de repetição i < 20 para o vetor com 20 numeros
		para(inteiro i = 0; i < 20; i++){
			se(NUMEROS[i] >= 0 e NUMEROS[i] <= 100){
				NUMEROS_FILTRADOS[0][primeiroContador] = NUMEROS[i]
				primeiroContador++
			}senao se(NUMEROS[i] >= 101 e NUMEROS[i] <= 200){
				NUMEROS_FILTRADOS[1][segundoContador] = NUMEROS[i]
				segundoContador++
			}senao se(NUMEROS[i] > 200){
				NUMEROS_FILTRADOS[2][terceiroContador] = NUMEROS[i]
				terceiroContador++
			}senao{
				NUMEROS_FILTRADOS[3][quartoContador] = NUMEROS[i]
				quartoContador++
			}
		}

		escreverVetor(20, 5)

		escreva("Entre 0 e 100: \n")
		escreverVetor(primeiroContador, 0)

		escreva("Entre 101 e 200: \n")
		escreverVetor(segundoContador, 1)

		escreva("Maiores que 200: \n")
		escreverVetor(terceiroContador, 2)

		

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 699; 
 * @DOBRAMENTO-CODIGO = [39, 57, 54];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */