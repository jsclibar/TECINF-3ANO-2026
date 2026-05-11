programa {
  funcao inicio() {

    inteiro numero, soma, quantidade

    soma = 0
    quantidade = 0

    enquanto (soma < 100) {

      escreva("Digite um número inteiro: ")
      leia(numero)

      soma = soma + numero

      quantidade = quantidade + 1
    }
    escreva("A soma atingiu ou ultrapassou 100.\n")
    escreva("Soma final: ", soma, "\n")
    escreva("Quantidade de números lidos: ", quantidade, "\n")
  }
}