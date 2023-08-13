// PASSO A PASSO
//
// Recebe 10 numeros
// verifica os numeros que se repetem
// Insere apenas a primeira aparicao daquele número
// 


programa
{
	inteiro numeros[10] = {1, -11, 8, 0, 5, -11, 0, 8, 1, 5}
	inteiro numerosIguais[10]
	
	funcao logico numeroValido(inteiro numero, inteiro tamanho){ // resolve problema dos numeros repetidos duplicados

		logico validacao = verdadeiro
		
		para(inteiro i = 0; i < tamanho; i++){
			se(numero == numerosIguais[i]){
				validacao = falso
				pare	
			}
		}

		retorne validacao
		
	}
	
	funcao inicio()
	{
		
		inteiro contador = 0
		
		para(inteiro i = 0; i < 10; i++){
			para(inteiro j = 0; j < 10; j++){
				se(numeros[i] == numeros[j] e i != j e numeroValido(numeros[i], contador) == verdadeiro){
					numerosIguais[contador] = numeros[i]
					contador++
				}
			}
		}

		para(inteiro i = 0; i < contador; i++){
			escreva(numerosIguais[i], "\n")
		}

	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */