programa {
  funcao inicio() {

    inteiro numero
    inteiro divisor

    escreva("Digite um número qualquer...: ")
    leia(numero)

    // Estrutura condicional:
    // O programa verifica se o resto da divisão do número por 2 é igual a 0.
    // Se isso acontecer, significa que o número pode ser dividido por 2
    // sem deixar resto, portanto ele é PAR.
    se (numero % 2 == 0) {
      escreva("O número digitado é PAR!")
    }

    // Caso a condição seja falsa (ou seja, exista resto na divisão por 2),
    // o número não é divisível por 2 e portanto é ÍMPAR.
    senao{
      escreva("O número digitado é ÍMPAR!")
    }
  }
}