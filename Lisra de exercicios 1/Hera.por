//Qual é a idade do colega 1? 20
//Qual é a idade do colega 2? 24
//Qual é a idade do colega 3? 27
//Qual é a idade do colega 4? 30
//Qual é a idade do colega 5? 18
//Qual é a minha idade? 44
//O tempo de vida meu e dos meus colegas é 163.

programa
{
	
	funcao inicio()
	{

		inteiro idade1, idade2, idade3, idade4, idade5, idade6, soma
		
		escreva("Qual é a idade do colega 1? ")
		leia(idade1)
		limpa()

		escreva("\nQual é a idade do colega 2? ")
		leia(idade2)
		limpa()


		escreva("\nQual é a idade do colega 3? ")
		leia(idade3)
		limpa()


		escreva("\nQual é a idade do colega 4? ")
		leia(idade4)
		limpa()


		escreva("\nQual é a idade do colega 5? ")
		leia(idade5)
		limpa()


		escreva("\nQual é a minha idade? ")
		leia(idade6)
		limpa()


		soma = idade1 + idade2 + idade3 + idade4 + idade5 + idade6

		escreva("\nO tempo de vida meu e dos meus colegas é ", soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 838; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */