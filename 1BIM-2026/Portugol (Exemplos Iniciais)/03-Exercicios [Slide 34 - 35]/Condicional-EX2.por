programa {
  funcao inicio() {
    inteiro num

    escreva("Digite um Número: ")
    leia(num)

    se (num > 0){
      escreva("O número digitado é positivo")
    }
    senao se (num < 0){
      escreva("O Número digitado é negativo")
    }
    senao{
      escreva("O número digitado foi zero")
    }  
  }
}