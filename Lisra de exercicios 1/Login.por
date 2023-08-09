//Pensar em um programa que faça um login
//1- Declarar o usuario e senha que serao usados pra autenticacao e os que serao inseridos
//2- Declarar a variavel de autenticacao
//3- Receber os dados inseridos pelo usuario
//4- Verificar se os dados inseridos e caso estejam corretos, atribuir valor a variavel de autenticacao
//5- Verifico a autenticacao
//6- Retorna a mensagem de sucesso ou falha no login.

programa
{
	
	funcao inicio()
	{
		//declara o usuario e senha que serao usados pra autenticacao e os que serao inseridos
		cadeia usuario = "icaro", senha = "1234", usuarioInserido, senhaInserida
		
		//quando autenticacao for maior que 0 significa que esta autenticado
		inteiro autenticacao = 0 //poderia ser um booleano

		//recebe os dados inseridas pelo usuario
		escreva("Insira seu login: ")
		leia(usuarioInserido)
		escreva("Insira sua senha: ")
		leia(senhaInserida)

		//verificacao de usuario e senha
		se(usuario == usuarioInserido)
		{	
			se(senha == senhaInserida)
			{
				autenticacao = 1
			}
		}

		//verificacao da autenticacao
		se(autenticacao > 0)
		{
			escreva("Login efetuado com sucesso!")	
		}
		senao
		{
			escreva("Falha ao realizar o login! Verifique o usuario e senha")	
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */