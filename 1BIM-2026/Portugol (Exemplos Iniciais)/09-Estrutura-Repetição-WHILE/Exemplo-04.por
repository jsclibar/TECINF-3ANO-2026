programa {
  funcao inicio() {

    inteiro n1, n2, soma
    cadeia resposta

    enquanto (1 == 1) {
      escreva("Digite o primeiro número: ")
      leia(n1)

      escreva("Digite o segundo número: ")
      leia(n2)

      soma = n1 + n2
      escreva("A soma dos dois números é: ", soma, "\n")

      escreva("Deseja realizar outra soma? (S/N): ")
      leia(resposta)

      se (resposta == "N" ou resposta == "n") {
        escreva("Encerrando o programa...\n")
        pare
      }

      escreva("\n") // linha em branco para separar as execuções
    }
  }
}