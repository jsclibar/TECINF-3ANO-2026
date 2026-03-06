programa {
  funcao inicio() {

    cadeia mencao

    escreva("Digite sua menção em TI: ")
    leia(mencao)

    // Estrutura condicional:
    // O programa verifica se o valor digitado na variável "mencao"
    // é igual a "D".
    // Se essa condição for verdadeira, o primeiro bloco será executado.
    se (mencao == "D") {
      escreva("Parabéns! Você foi aprovado!")
    }
    // Caso a condição seja falsa (ou seja, a menção não seja "D"),
    // o bloco "senao" será executado.
    senao{
      escreva("Complicou....")
    }
    
  }
}