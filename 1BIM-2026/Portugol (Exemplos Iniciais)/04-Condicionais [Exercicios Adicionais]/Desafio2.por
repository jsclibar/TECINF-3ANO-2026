programa
{
	funcao inicio()
	{
		real n1, n2, n3, maior
		
		escreva("Digite o primeiro número: ")
		leia(n1)
		
		escreva("Digite o segundo número: ")
		leia(n2)
		
		escreva("Digite o terceiro número: ")
		leia(n3)
		
		se (n1 == n2 e n2 == n3)
		{
			escreva("Os três números são iguais")
		}
		senao
		{
			maior = n1
			
			se (n2 > maior)
			{
				maior = n2
			}
			
			se (n3 > maior)
			{
				maior = n3
			}
			
			escreva("O maior número é: ", maior)
		}
	}
}