/*
Criar uma estrutura de laço de repetição para representar uma arte relacionada ao Dia das Crianças. O objetivo aqui é ser criativo e compreender o uso dos laços.

Obs.: Faça uso de laços ao invés de vários “escreva()”.


╲╭━━━━╮╲╲
╲┃╭╮╭╮┃╲╲
┗┫┏━━┓┣┛╲
╲┃╰━━╯┃
╲╰┳━━┳╯╲╲

{"╲╭━━━━╮╲╲"},
{"╲┃╭╮╭╮┃╲╲"},
{"┗┫┏━━┓┣┛╲"},
{"╲┃╰━━╯┃"},
{"╲╰┳━━┳╯╲╲"},

//desenho
//
//PASSO A PASSO
//
//1- Dividimos a palavra a ser escrita letra por letra, depois linha por linha de cada letra em uma matriz.
//2- Depois percorremos a matriz, escrevendo todas as linhas letra por letra.
//
//Obs: única forma de escrever palavras sem usar muitas condicionais

*/
programa
{	
	funcao inicio()
	{
		
		//LINHA 1
		const inteiro LINHAS = 11
		const inteiro COLUNAS = 5
		const cadeia DESENHO_LINHA_1[LINHAS][COLUNAS] = { // matriz da frase que sera escrita
								{
								"╲╭━━━━╮╲╲ ",
								"╲┃╭╮╭╮┃╲╲ ",
								"┗┫┏━━┓┣┛╲ ",
								"╲┃╰━━╯┃   ",
								"╲╰┳━━┳╯╲╲ "
								},
								{
    								"****",
    								"*   ",
    								"*** ",
    								"*   ",
    								"*   "
    								},
    								{
    								"****",
    								"*   ",
    								"*** ",
    								"*   ",
    								"****"
    								},
    								{
    								"*   ",
    								"*   ",
    								"*   ",
    								"*   ",
    								"****"
    								},
    								{
    								"****",
    								" ** ",
    								" ** ",
    								" ** ",
    								"****"
    								},
    								{
    								"****",
    								"  * ",
    								" *  ",
    								"*   ",
    								"****"
    								},
    								{
    								"    ",
    								"    ",
    								"    ",
    								"    ",
    								"    "
    								},
    								{
    								"****",
    								"*  *",
    								"*  *",
    								"*  *",
    								"****"
    								},
    								{
    								"****",
    								" ** ",
    								" ** ",
    								" ** ",
    								"****"
    								},
    								{
    								"****",
    								"*  *",
    								"****",
    								"*  *",
    								"*  *"
    								},
    								{
								" ╲╭━━━━╮╲╲",
								" ╲┃╭╮╭╮┃╲╲",
								" ┗┫┏━━┓┣┛╲",
								" ╲┃╰━━╯┃  ",
								" ╲╰┳━━┳╯╲╲"
								}				
    							}
		
		//LINHA 2
		const inteiro LINHAS_2 = 12
		const inteiro COLUNAS_2 = 5
		const cadeia DESENHO_LINHA_2[LINHAS_2][COLUNAS_2] = { // matriz da frase que sera escrita
								{
    								"****",
    								" * *",
    								" * *",
    								" * *",
    								"****"
    								},
    								{
    								"****",
    								"*  *",
    								"****",
    								"*  *",
    								"*  *"
    								},
    								{
    								"****",
    								"*   ",
    								"****",
    								"   *",
    								"****"
    								},
    								{
    								"    ",
    								"    ",
    								"    ",
    								"    ",
    								"    "
    								},
    								{
    								"****",
    								"*   ",
    								"*   ",
    								"*   ",
    								"****"
    								},
    								{
    								"****",
    								"*  *",
    								"****",
    								"* * ",
    								"*  *"
    								},
    								{
    								"****",
    								" ** ",
    								" ** ",
    								" ** ",
    								"****"
    								},
    								{
    								"****",
    								"*  *",
    								"****",
    								"*  *",
    								"*  *"
    								},
    								{
    								"*  *",
    								"** *",
    								"* **",
    								"*  *",
    								"*  *"
    								},
    								{
    								"****",
    								"*   ",
    								"*   ",
    								"*   ",
    								"****"
    								},
    								{
    								"****",
    								"*  *",
    								"****",
    								"*  *",
    								"*  *"
    								},
    								{
    								"****",
    								"*   ",
    								"****",
    								"   *",
    								"****"
    								}				
    							}
		
		const cadeia boneco[5] = {
							"╲╭━━━━╮╲╲",
							"╲┃╭╮╭╮┃╲╲",
							"┗┫┏━━┓┣┛╲",
							"╲┃╰━━╯┃",
							"╲╰┳━━┳╯╲╲"
							}
		
		//desenha a palavra toda linha por linha
		//LINHA 1
		para (inteiro i = 0; i < COLUNAS; i++) { // linhas
  			cadeia linha = ""
  			para (inteiro j = 0; j < LINHAS; j++) {// colunas == letras
    				cadeia letra = DESENHO_LINHA_1[j][i] // linha atual da letra atual
    				linha += letra + " " //soma linha da letra atual a linha que esta sendo escrita
  			}
  			escreva(linha, "\n")
		}

		escreva("\n")

		//LINHA 2
		para (inteiro i = 0; i < COLUNAS_2; i++) { // linhas
  			cadeia linha = "   "
  			para (inteiro j = 0; j < LINHAS_2; j++) {// colunas == letras
    				cadeia letra = DESENHO_LINHA_2[j][i] // linha atual da letra atual
    				linha += letra + " " //soma linha da letra atual a linha que esta sendo escrita
  			}
  			escreva(linha, "\n")
		}



		//ALGUNS OUTROS EXEMPLOS DE DESENHOS
		
		/*
		para(inteiro i = 0; i < 5; i++){
			escreva(boneco[i], "\n")
		}

		escreva("\n\n")

		/*
		//desenho X
		inteiro aux = 4, aux2 = 4
		
		para(inteiro i = 0; i < 7; i++){
			para(inteiro j = 0; j < 9; j++){
				se(j == aux ou j == aux2 ou j == 4){
					escreva("*")
				}senao{
					escreva("-")
				}
			}
			se(i > 1){
				aux2+=1
				aux-=1
			}senao{	
				aux+=2
				aux2-=2	
			}
			escreva("\n")
		}

		/*
		escreva("\n\n")

		// desenho A
		inteiro auxA = 4, auxA2 = 4
		
		para(inteiro i = 0; i < 5; i++){
			escreva("	")
			para(inteiro j = 0; j < 9; j++){
				se(j == auxA ou j == auxA2){
					escreva("*")
				}senao se(i == 2 e j == 4){
					escreva("*")	
				}senao{
					escreva("-")
				}
			}
			auxA+=1
			auxA2-=1	
			escreva("\n")
		}

		escreva("\n\n")
		
		// desenho G
		para(inteiro i = 0; i < 5; i++){
			escreva("		")
			para(inteiro j = 0; j < 9; j++){
				se(j % 2 != 0){
					escreva("-")
				}senao se(i == 0 ou i == 4){
					escreva("*")
				}senao se(j == 0){
					escreva("*")	
				}senao se(i == 2 e j > 3){
					escreva("*")
				}senao se(i == 3 e j == 8){
					escreva("*")	
				}senao{
					escreva("-")
				}
			}
			escreva("\n")
		}
		*/
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5045; 
 * @DOBRAMENTO-CODIGO = [36, 119, 206, 216, 228];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */