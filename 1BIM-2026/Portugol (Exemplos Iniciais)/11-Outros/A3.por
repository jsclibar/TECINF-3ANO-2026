programa
{
	funcao inicio()
	{
		inteiro numero
		
		escreva("Digite um número: ")
		leia(numero)
		
		se (numero % 2 == 0)
		{
			escreva("O número ", numero, " é par.\n")
		}
		senao
		{
			escreva("O número ", numero, " é ímpar.\n")
		}
	}
}