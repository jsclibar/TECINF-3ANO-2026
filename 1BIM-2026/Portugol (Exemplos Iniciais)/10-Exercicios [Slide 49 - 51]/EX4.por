programa {
  funcao inicio() {

    inteiro numero, soma, quantidade

    // Inicializa as variáveis
    soma = 0
    quantidade = 0

    // Repete enquanto a soma for menor que 100
    enquanto (soma < 100) {

      // Lê um número
      escreva("Digite um número inteiro: ")
      leia(numero)

      // Soma o número ao total
      soma = soma + numero

      // Conta quantos números foram lidos
      quantidade = quantidade + 1
    }

    escreva("A soma atingiu ou ultrapassou 100.\n")
    escreva("Soma final: ", soma, "\n")
    escreva("Quantidade de números lidos: ", quantidade, "\n")
  }
}