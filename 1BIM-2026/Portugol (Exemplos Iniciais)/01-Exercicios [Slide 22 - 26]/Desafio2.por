programa
{
	funcao inicio()
	{
		real consumo_real, eficiencia_fonte, tempo_uso, custo_kwh
		real energia_tomada, consumo_diario, custo_diario, custo_mensal
		
		escreva("Digite o consumo real do PC em Watts: ")
		leia(consumo_real)
		
		escreva("Digite a eficiência da fonte de alimentação (em %): ")
		leia(eficiencia_fonte)
		
		escreva("Digite o tempo médio de uso do PC por dia (em horas): ")
		leia(tempo_uso)
		
		escreva("Digite o custo da energia elétrica (R$/kWh): ")
		leia(custo_kwh)
		
		// Cálculo da energia puxada da tomada
		energia_tomada = consumo_real / (eficiencia_fonte / 100)
		
		// Conversão para kWh e cálculo do consumo diário
		consumo_diario = (energia_tomada * tempo_uso) / 1000
		
		// Cálculo do custo diário e mensal
		custo_diario = consumo_diario * custo_kwh
		custo_mensal = custo_diario * 30
		
		limpa()
		
		escreva("Energia puxada da tomada: ", energia_tomada, "W\n")
		escreva("Consumo diário de energia: ", consumo_diario, "kWh\n")
		escreva("Custo diário do uso do PC: R$", custo_diario, "\n")
		escreva("Custo mensal do uso do PC: R$", custo_mensal, "\n")
	}
}