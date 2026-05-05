programa {
  funcao inicio() {

    real preco, mais_barato, mais_caro

    // Lê o primeiro preço
    escreva("Digite o preço do produto ou 0 para encerrar: ")
    leia(preco)

    // Verifica se o usuário digitou pelo menos um preço válido
    se (preco > 0) {

      // O primeiro preço é, inicialmente, o mais barato e o mais caro
      mais_barato = preco
      mais_caro = preco

      // Continua enquanto o preço for maior que zero
      enquanto (preco > 0) {

        // Verifica se o preço atual é menor que o mais barato
        se (preco < mais_barato) {
          mais_barato = preco
        }

        // Verifica se o preço atual é maior que o mais caro
        se (preco > mais_caro) {
          mais_caro = preco
        }

        // Lê o próximo preço
        escreva("Digite outro preço ou 0 para encerrar: ")
        leia(preco)
      }

      escreva("Preço do produto mais barato: R$ ", mais_barato, "\n")
      escreva("Preço do produto mais caro: R$ ", mais_caro, "\n")

    } senao {
      escreva("Nenhum preço válido foi digitado.\n")
    }
  }
}