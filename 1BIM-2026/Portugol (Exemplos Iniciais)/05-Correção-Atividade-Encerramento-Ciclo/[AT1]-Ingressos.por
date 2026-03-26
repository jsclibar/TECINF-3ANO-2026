programa
{
    funcao inicio()
    {
        real custo_total, preco_ingresso, valor_arrecadado
        inteiro ingressos_vendidos, ingressos_necessarios

        escreva("Digite o custo total do espetáculo: ")
        leia(custo_total)

        escreva("Digite o preço de cada ingresso: ")
        leia(preco_ingresso)

        escreva("Digite a quantidade de ingressos vendidos: ")
        leia(ingressos_vendidos)

        valor_arrecadado = preco_ingresso * ingressos_vendidos

        se (valor_arrecadado >= custo_total)
        {
            escreva("O custo do espetáculo foi pago com sucesso!")
        }
        senao
        {
            // Calcula quantos ingressos ainda faltam
            ingressos_necessarios = (custo_total - valor_arrecadado) / preco_ingresso

            escreva("Ainda precisam ser vendidos ", ingressos_necessarios, " ingressos para cobrir o custo.")
        }
    }
}