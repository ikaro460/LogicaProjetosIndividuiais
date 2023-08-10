programa
{
	
	funcao inicio()
	{
		//desenho
		//
		//PASSO A PASSO
		//
		//1- Dividimos a palavra a ser escrita letra por letra, depois linha por linha de cada letra em uma matriz.
		//2- Depois percorremos a matriz, escrevendo todas as linhas letra por letra.
		
		const cadeia grupo[7][5] = { // matriz da frase que sera escrita
								{
    								" ** ",
    								"*   ",
    								"* **",
    								"*  *",
    								" ** "
    								},
    								{
    								"*** ",
    								"*  *",
    								"*** ",
    								"* * ",
    								"*  *"
    								},
    								{
    								"*  *",
    								"*  *",
    								"*  *",
    								"*  *",
    								" ** "
    								},
    								{
    								"*** ",
    								"*  *",
    								"*** ",
    								"*   ",
    								"*   "
    								},
    								{
    								" ** ",
    								"*  *",
    								"*  *",
    								"*  *",
    								" ** "
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
    								"   *",
    								"  * ",
    								" *  ",
    								"*   "
    								}				
    							}

		//desenha a palavra toda linha por linha
		para (inteiro i = 0; i < 5; i++) { // linhas
  			cadeia linha = ""
  			para (inteiro j = 0; j < 7; j++) {// colunas == letras
    				cadeia letra = grupo[j][i] // linha atual da letra atual
    				linha += letra + " " //soma linha da letra atual a linha que esta sendo escrita
  			}
  			escreva(linha, "\n")
		}


		/*
		escreva("\n\n")

		// desenho X
		inteiro aux = 0, aux2 = 8
		
		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 9; j++){
				se(j == aux ou j == aux2){
					escreva("*")
				}senao{
					escreva("-")
				}
			}
			aux+=2
			aux2-=2	
			escreva("\n")
		}

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
 * @POSICAO-CURSOR = 320; 
 * @DOBRAMENTO-CODIGO = [12];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */