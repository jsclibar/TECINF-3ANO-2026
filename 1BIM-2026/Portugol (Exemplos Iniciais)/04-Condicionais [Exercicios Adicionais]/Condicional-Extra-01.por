programa
{
	funcao inicio()
	{
		inteiro idade
		
		escreva("Digite a idade: ")
		leia(idade)
		
		se (idade >= 0 e idade <= 12)
		{
			escreva("Criança")
		}
		senao se (idade >= 13 e idade <= 17)
		{
			escreva("Adolescente")
		}
		senao se (idade >= 18 e idade <= 59)
		{
			escreva("Adulto")
		}
		senao
		{
			escreva("Idoso")
		}
	}
}