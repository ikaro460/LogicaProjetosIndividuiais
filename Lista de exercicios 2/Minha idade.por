//PROGRAMA MINHA IDADE
//
//1- declarar data atual, data de nascimento e idade.
//2- Receber a data de nascimento
//3- Calcular a data atual menos a data de nascimento e atribuir a idade
//	3.1 - Calcular ano atual menos ano de nascimento.
//	3.2 - Verificar se o mês atual é menor que o mês de nascimento. Se sim, subtrair 1 a idade. Senão:
//		3.2.1 - Se o mês atual for igual ao mês de nascimento, verificar se o dia atual é menor que o dia de nascimento, se sim, subtrair 1 a idade. Senão:
//			3.2.1.1 - Se o dia atual for igual ao dia do nascimento, imprimir mensagem de aniversário.
//4- Exibir idade.


programa
{
  
  funcao inicio()
  {
    	inteiro dataAtual[3] = {0,0,0}, dataNasc[3] = {0,0,0}, idade

	// Pede a data atual ao usuario
	escreva("Digite que dia é hoje:  ")
    	leia(dataAtual[0])
    	escreva("Digite em que mês estamos:  ")
    	leia(dataAtual[1])
    	escreva("Digite em que ano estamos:  ")
    	leia(dataAtual[2])
    	limpa()

    	// Pede a data de nascimento do usuario
    	escreva("Digite o dia em que você nasceu:  ")
    	leia(dataNasc[0])
    	escreva("Digite o mês em que você nasceu:  ")
    	leia(dataNasc[1])
    	escreva("Digite o ano em que você nasceu:  ")
    	leia(dataNasc[2])
    	limpa()

    	// Calcula a idade
    	idade = dataAtual[2] - dataNasc[2]

    	// Verifica se ja fez aniversario esse ano
    	se(dataAtual[1] < dataNasc[1]){ // verifica o mes
    		idade = idade - 1	
    	}senao se(dataAtual[1] == dataNasc[1]){ // verifica se estamos no mes de nascimento
    		se(dataAtual[0] < dataNasc[0]){ // verifica o dia
    			idade = idade - 1	
    		}senao se(dataAtual[0] == dataNasc[0]){ // verifica se hoje e seu aniversario
    			escreva("Hoje é seu aniverserio! Está de parabuains! \n")
    		}
    	}

    	// Imprime a idade do usuário
    	escreva("Você possui ", idade, " anos. \n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */