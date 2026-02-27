programa {

  // Função principal do programa
  funcao inicio() {

    // Declaração de variável do tipo cadeia (texto) para armazenar o nome
    cadeia nome
    
    // Declaração de variável do tipo inteiro para armazenar a idade
    inteiro idade

    // Exibe uma mensagem pedindo o nome do usuário
    escreva("Olá!\nDigite seu nome completo: ")
    
    // Lê o nome digitado e armazena na variável 'nome'
    leia(nome)
    
    // Exibe uma mensagem pedindo a idade do usuário
    escreva("Agora, digite sua idade: ")
    
    // Lê a idade digitada e armazena na variável 'idade'
    leia(idade)

    // Exibe na tela o nome e a idade informados pelo usuário
    escreva("\nSeu nome é ", nome, " e você tem ", idade, " anos.")

  }
}