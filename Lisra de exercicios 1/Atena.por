//Atena
//Temperatura em °C: 30°
//Temperatura em °F: 86°
//
//Use: F = C * 1,8 + 32

programa	
{
	
	funcao inicio()
	{
		//uma variavel pra cada unidade de medida de temperatura
		real tempC, tempF

		//recebe o valor inserido pelo usuario
		escreva("Digite a temperatura em Celsius: ")
		leia(tempC)
		limpa()

		tempF = tempC * 1.8 + 32
		
		escreva ("Temperatura em Celsius: ", tempC ,"\nTemperatura em Fahrenheit: ", tempF)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */