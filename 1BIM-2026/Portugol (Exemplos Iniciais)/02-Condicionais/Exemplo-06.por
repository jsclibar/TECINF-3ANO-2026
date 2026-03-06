programa {
  funcao inicio() {

    inteiro numero

    escreva("Olá!\nEsse programa verifica se um número X é multiplo\n(divisível) por 3 ou 5!\n")

    escreva("\nDigite um número qualquer...: ")
    leia(numero)

    // Estrutura condicional com operador lógico "ou".
    // O programa verifica duas condições:
    // 1) Se o número é divisível por 3
    // 2) Se o número é divisível por 5
    // Basta uma dessas condições ser verdadeira para que o bloco seja executado.
    se (numero % 3 == 0 ou numero % 5 == 0){
      escreva("o número ", numero, " é multiplo de 3 ou 5.")
    }    
  }
}