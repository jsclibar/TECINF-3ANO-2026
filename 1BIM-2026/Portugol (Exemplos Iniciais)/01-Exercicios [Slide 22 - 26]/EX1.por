programa
{
	funcao inicio()
	{
		real num1, num2, num3, media
		
		escreva("Digite o primeiro número: ")
		leia(num1)
		
		escreva("Digite o segundo número (diferente do primeiro): ")
		leia(num2)
		
		escreva("Digite o terceiro número (diferente dos anteriores): ")
		leia(num3)
		
		// Cálculo da média aritmética
		media = (num1 + num2 + num3) / 3
		
		limpa()
		
		escreva("A média aritmética dos números informados é: ", media, "\n")
	}
}
