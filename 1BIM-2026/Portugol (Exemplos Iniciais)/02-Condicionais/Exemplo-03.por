programa {
  funcao inicio() {

    real media

    escreva("Digite sua média final: ")
    leia(media)

    // Estrutura condicional com múltiplos caminhos de decisão.
    // Primeiro o programa verifica se a média é maior ou igual a 6.
    // Se for verdadeira, o estudante está aprovado.
    se (media >=6 ) {
        escreva("Parabéns, você foi aprovado!")
    }

    // Caso a primeira condição seja falsa, o programa testa outra condição:
    // verifica se a média é maior ou igual a 4.5.
    // Se for verdadeira, o estudante vai para recuperação.
    senao se (media >= 4.5) {
        escreva("Você ficou de recuperação!")
    }

    // Se nenhuma das condições anteriores for verdadeira,
    // significa que a média é menor que 4.5.
    // Nesse caso, o estudante está reprovado.
    senao{
        escreva("Você reprovou...")
    }
      
    escreva("\nSua média final foi: ", media)
  }
}