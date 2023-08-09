/*
 ESTUDO DA MADRUGADA

	O programa “Estudo da Madrugada” irá calcular a porcentagem de
	estudantes que estudam durante a madrugada. Para isso, o assistente
	administrativo irá interagir com o programa. Primeiro ele deve perguntar
	ao assistente quantos estudantes têm na turma. Após, com base em
	estudos anteriores, o assistente verificou que, na primeira disciplina da
	residência, 35% dos estudantes estudam de madrugada e na segunda
	disciplina, esse valor sobe 30%. Ao considerar a média das duas disciplinas e
	a quantidade de estudantes da turma, o programa deve informar ao
	assistente quantos estudantes, em média, estudam de madrugada nas
	duas primeiras disciplinas.

PASSO A PASSO

	1- Declara variaveis alunos, primeiraDisciplina, segundaDisciplina, soma, media.
	2- Pedir o numero de estudantes na turma.
	3- Calcular media.
		3.1- adicionar 35% da primeira disciplina na soma.
		3.2- adicionar 65% da segunda disciplina na soma.
	4- Imprimir a media de alubnos que estudam de madrugada
	
*/

programa
{
	
	funcao inicio()
	{
		real alunos, primeiraDisciplina, segundaDisciplina, soma = 0.0
		inteiro media

		escreva("Informe a quantidade de alunos na turma: ")
		leia(alunos)
		limpa()

		//primeira disciplina
		soma = soma + alunos/100*35

		//segunda disciplina
		soma = soma + alunos/100*65

		//media
		media = soma/2

		escreva("\nNúmero de alunos na turma: ", alunos, "\n\nA media de alunos que estudam na madrugada é de: ", media, " alunos.\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */