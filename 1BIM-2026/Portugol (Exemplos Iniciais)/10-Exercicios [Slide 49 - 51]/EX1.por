programa {
  funcao inicio() {

    inteiro numero, quantidade
    real soma, media

    // Começamos com zero porque ainda nenhum número foi digitado
    quantidade = 0
    soma = 0

    // Primeira leitura
    escreva("Digite um número inteiro: ")
    leia(numero)

    // Enquanto o número digitado for maior que zero,
    // ele será contado e usado na média
    enquanto (numero > 0) {

      // Conta mais um número positivo digitado
      quantidade = quantidade + 1

      // Soma o número positivo ao total
      soma = soma + numero

      // Lê o próximo número
      escreva("Digite outro número inteiro: ")
      leia(numero)
    }

    // Quando o usuário digitar zero ou número negativo,
    // o enquanto termina e o programa vem para cá

    se (quantidade > 0) {
      media = soma / quantidade

      escreva("Quantidade de números positivos digitados: ", quantidade, "\n")
      escreva("Média aritmética entre eles: ", media, "\n")
    } senao {
      escreva("Nenhum número positivo foi digitado.\n")
    }
  }
}
