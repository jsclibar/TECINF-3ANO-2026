programa
{
	funcao inicio()
	{
		real consumo_kwh, tarifa_kwh, total_a_pagar
		
		escreva("Digite o consumo de energia em kWh: ")
		leia(consumo_kwh)
		
		escreva("Digite o valor da tarifa por kWh: ")
		leia(tarifa_kwh)
		
		// Cálculo do total a pagar
		total_a_pagar = consumo_kwh * tarifa_kwh
		
		limpa()
		
		escreva("O total a pagar é: R$", total_a_pagar, "\n")
	}
}