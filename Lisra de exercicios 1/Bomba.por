//BOMBA

programa
{

	inclua biblioteca Util --> u
	
	funcao inicio()
	{

		/*para(inteiro i=10; i>0; i--){
			escreva("Detonação em: ", i, "\n")
			u.aguarde(1000)
			limpa()
			
		}
		escreva("Boooooom!!!!") */

		inteiro i = 5
		enquanto(i>0){
			escreva("Detonação em: ", i, "\n")
			u.aguarde(1000)
			limpa()
			i--
		}
		escreva("Boooooom!!!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */