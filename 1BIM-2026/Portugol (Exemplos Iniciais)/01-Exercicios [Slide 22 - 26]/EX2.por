programa
{
	funcao inicio()
	{
		real distancia, velocidade_media, tempo_viagem
		
		escreva("Digite a distância da viagem em km: ")
		leia(distancia)
		
		escreva("Digite a velocidade média do veículo em km/h: ")
		leia(velocidade_media)
		
		// Cálculo do tempo estimado de viagem
		tempo_viagem = distancia / velocidade_media
		
		limpa()
		
		escreva("O tempo estimado de viagem é: ", tempo_viagem, " horas\n")
	}
}