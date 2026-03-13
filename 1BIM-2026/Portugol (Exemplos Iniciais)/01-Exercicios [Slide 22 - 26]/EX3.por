programa
{
	funcao inicio()
	{
		real distancia, consumo_medio, preco_combustivel, custo_total, litros_necessarios
		
		escreva("Digite a distância da viagem em km: ")
		leia(distancia)
		
		escreva("Digite o consumo médio do veículo em km por litro: ")
		leia(consumo_medio)
		
		escreva("Digite o preço do combustível por litro: ")
		leia(preco_combustivel)
		
		// Cálculo do consumo total de combustível
		litros_necessarios = distancia / consumo_medio
		
		// Cálculo do custo total da viagem
		custo_total = litros_necessarios * preco_combustivel
		
		limpa()
		
		escreva("O custo total da viagem será de R$", custo_total, "\n")
	}
}