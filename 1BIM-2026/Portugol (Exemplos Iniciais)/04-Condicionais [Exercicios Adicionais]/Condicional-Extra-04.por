programa
{
	funcao inicio()
	{
		real media, frequencia
		
		escreva("Digite a média final do aluno: ")
		leia(media)
		
		escreva("Digite a frequência do aluno (%): ")
		leia(frequencia)
		
		se (media >= 7 e frequencia >= 75)
		{
			escreva("Aprovado")
		}
		senao se (frequencia < 75)
		{
			escreva("Reprovado por falta")
		}
		senao
		{
			escreva("Reprovado por nota")
		}
	}
}