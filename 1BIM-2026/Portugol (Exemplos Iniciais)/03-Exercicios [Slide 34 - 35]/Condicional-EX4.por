programa
{
	funcao inicio()
	{
		inteiro dia
		
		escreva("Digite um número de 1 a 7 representando o dia da semana: ")
		leia(dia)
		
		se (dia >= 1 e dia <= 5)
		{
			escreva("O dia informado é um dia útil.\n")
		}
		senao se (dia == 6 ou dia == 7)
		{
			escreva("O dia informado é um fim de semana.\n")
		}
		senao
		{
			escreva("Número inválido. Digite um valor de 1 a 7.\n")
		}
	}
}