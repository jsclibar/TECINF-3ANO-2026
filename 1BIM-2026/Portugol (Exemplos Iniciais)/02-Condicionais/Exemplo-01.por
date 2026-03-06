programa {
  funcao inicio() {

    real temperatura

    escreva("Digite a temperatura atual: ")
    leia(temperatura)

    // Estrutura condicional:
    // O programa avalia uma condição lógica.
    // Neste caso, verifica se a temperatura é maior ou igual a 30.
    // Se a condição for verdadeira, o bloco entre { } será executado.
    // Caso seja falsa, o programa simplesmente ignora esse bloco.
    se (temperatura >= 30) {
      escreva("Você está em Piracicaba!!!")
    }
    
  }
}