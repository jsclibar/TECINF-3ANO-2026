programa
{
	funcao inicio()
	{
		real consumo_processador, consumo_placa_video, consumo_placa_mae, consumo_memoria, consumo_discos, consumo_outros, consumo_total, potencia_recomendada
		
		escreva("Digite o consumo do processador em Watts: ")
		leia(consumo_processador)
		
		escreva("Digite o consumo da placa de vídeo em Watts: ")
		leia(consumo_placa_video)
		
		escreva("Digite o consumo da placa-mãe em Watts: ")
		leia(consumo_placa_mae)
		
		escreva("Digite o consumo da memória RAM em Watts: ")
		leia(consumo_memoria)
		
		escreva("Digite o consumo dos discos rígidos/SSDs em Watts: ")
		leia(consumo_discos)
		
		escreva("Digite o consumo de outros componentes opcionais (coolers, iluminação RGB, etc.) em Watts: ")
		leia(consumo_outros)
		
		// Cálculo do consumo total
		consumo_total = consumo_processador + consumo_placa_video + consumo_placa_mae + consumo_memoria + consumo_discos + consumo_outros
		
		// Aplicando a margem de segurança de 20%
		potencia_recomendada = consumo_total * 1.2
		
		limpa()
		
		escreva("Consumo total do PC sem margem: ", consumo_total, "W\n")
		escreva("Potência recomendada da fonte com margem de segurança: ", potencia_recomendada, "W\n")
	}
}