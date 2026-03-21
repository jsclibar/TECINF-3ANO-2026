programa
{
	funcao inicio()
	{
		caracter vip
		real valor_compra, desconto, valor_final
		
		escreva("O cliente é VIP? (S para sim, N para não): ")
		leia(vip)
		
		escreva("Digite o valor da compra: ")
		leia(valor_compra)
		
		// Definição do desconto
		se (vip == "S" e valor_compra > 200)
		{
			desconto = 0.2 // 20%
		}
		senao se (vip == "S" ou valor_compra > 200)
		{
			desconto = 0.1 // 10%
		}
		senao
		{
			desconto = 0.0 // Sem desconto
		}
		
		// Cálculo do valor final
		valor_final = valor_compra - (valor_compra * desconto)
		
		limpa()
		
		escreva("Valor da compra: R$", valor_compra, "\n")
		escreva("Desconto aplicado: ", desconto * 100, "%\n")
		escreva("Valor final a pagar: R$", valor_final, "\n")
	}
}