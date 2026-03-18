programa
{
	funcao inicio()
	{
		cadeia usuario
		cadeia senha
		
		escreva("Digite o nome de usuário: ")
		leia(usuario)
		
		escreva("Digite a senha: ")
		leia(senha)
		
		se (usuario == "admin" e senha == "1234")
		{
			escreva("Acesso permitido")
		}
		senao
		{
			escreva("Acesso negado")
		}
	}
}