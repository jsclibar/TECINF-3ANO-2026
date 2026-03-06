programa {
  funcao inicio() {

    inteiro idade

    escreva("Bem vindo!\nSó pode particpar do torneio pessoas com idades entre 18 e 60 anos.\n")

    escreva("\nDigite sua idade: ")
    leia(idade)

    // Estrutura condicional com operador lógico "e".
    // O programa verifica duas condições ao mesmo tempo:
    // 1) Se a idade é maior ou igual a 18
    // 2) Se a idade é menor ou igual a 60
    // Para que o bloco seja executado, as duas condições precisam ser verdadeiras.
    se (idade >= 18 e idade <= 60) {
      escreva("Iscrição liberada!")
    }
    // Caso uma das condições seja falsa (idade menor que 18 ou maior que 60),
    // o bloco "senao" será executado.
    senao{
      escreva("Você não pode participar.")
    }

    escreva("\nObrigado!")
    
  }
}