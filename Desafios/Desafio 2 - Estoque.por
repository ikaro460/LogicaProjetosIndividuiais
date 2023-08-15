// ESTOQUE
// 1 - Declarar matriz estoque que irá guardar produtos e quantidades respectivas.
//	1.1 -  Declarar vetor cadeia para guardar nomes dos produtos.
// 2 - Declarar variavel de opcao escolhida.
// 3 - Criar menu.
// 	3.1 - Produtos com estoque.
//	3.2 - Produtos sem estoque.
//	3.4 - Sair.
// 4 - Ler a opcao escolhida pelo usuario.
// 5 - Apresentar resultado de acordo com a opcao escolhida.
//	5.1 - Caso opcao 1, percorrer a matriz e escrever apenas os produtos com quantidade maior que zero.
//	5.2 - Caso opcao 2, percorrer a matriz e escrever apenas produtos com quantidade menor que 1.
//	5.3 - Caso opcao 3, escrever "programa encerrado".


programa
{

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		const inteiro estoque[2][5] = {{1, 2, 3, 4, 5}, {1, 7, 0, 0, 3}} // estoque[produtos, quantidades]
		const cadeia produtos[5] = {"Pera", "Uva", "Maçã", "Banana", "Manga"}

		inteiro opcaoEscolhida
		logico sairSistema

		faca{
			sairSistema = falso

			//Menu
			escreva("BEM-VINDO AO ESTOQUE! \n\n")
			escreva("Escolha uma das opções: \n\n")
			escreva("1- Listar produtos com estoque \n")
			escreva("2- Listar produtos sem estoque \n")
			escreva("3- Sair \n")
			leia(opcaoEscolhida)
			limpa()
	
			escolha(opcaoEscolhida){ //
	
				caso 1: // Percorre a matriz e escreve apenas os produtos COM estoque
					
					escreva("Produtos com estoque: \n\n")
					para(inteiro i = 0; i < 5; i++){
						se(estoque[1][i] > 0){
							escreva(produtos[i], "\n", estoque[1][i], " unidades\n\n")
						}
					}
				pare
	
				caso 2: // Percorre a matriz e escreve apenas os produtos SEM estoque

					escreva("Produtos sem estoque: \n\n")
					
					para(inteiro i = 0; i < 5; i++){
						se(estoque[1][i] < 1){
							escreva(produtos[i], "\n")
						}
					}
				pare
	
				caso 3:
					escreva("Programa Encerrado! \n")
					u.aguarde(1500)
					limpa()
					sairSistema = verdadeiro
				pare
				
			}
			
			//Menu final
			escreva("\n1.Voltar\n2.Sair\n")
			leia(opcaoEscolhida)
			limpa()
			
			se(opcaoEscolhida == 2){
				escreva("Programa Encerrado! \n")
				u.aguarde(1500)
				limpa()
				sairSistema = verdadeiro
			}
			
		}enquanto(sairSistema == falso)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2019; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */