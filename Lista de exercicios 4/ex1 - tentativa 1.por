programa
{
	
	funcao inicio()
	{
		inteiro numeros[10] = {3, 1, 6, 1, 5, 6, 5, 8, 8, 5}
		logico numerosIguais[10] 
		inteiro aux = 0
		
		para(inteiro i = 0; i < 10; i++){
			inteiro contador = 0
			para(inteiro j = 0; j < 10; j++){
				se(numeros[i] == numeros[j] e i != j){
					se(contador < 1){
						aux = numeros[i]
						contador++
					}
					numerosIguais[i] = verdadeiro
					pare
				}
				numerosIguais[i] = falso
			}
		}
		//inteiro n = numerosIguais[0]

		aux = numeros[0]
		
		para(inteiro i = 0; i < 10; i++){
			se(numerosIguais[i] == verdadeiro e numeros[i] != aux){
				escreva(numeros[i], "\n")
				aux = numeros[i]
			}
		}
	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {aux, 8, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */