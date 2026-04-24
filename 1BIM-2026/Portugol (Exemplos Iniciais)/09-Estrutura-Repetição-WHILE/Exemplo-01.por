programa {
  funcao inicio() {

    inteiro numero

    escreva("Digite um número: ")
    leia(numero)

    enquanto (numero <= 10) {
      escreva("Contando...\n")
      escreva("Digite outro número: ")
      leia(numero)
    }

    escreva("Número maior que 10 digitado. Fim do programa.\n")
  }
}

/*
  Este programa pede um número ao usuário e repete a mensagem
  "Contando..." enquanto o número digitado for menor ou igual a 10.
  Quando um número maior que 10 é digitado, o programa encerra.
*/