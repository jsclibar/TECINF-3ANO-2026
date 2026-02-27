programa {
  funcao inicio() {

    inteiro n1, n2, resultado // variáveis usadas para armazenar as entradas e também o resultado do processamento temporariamente na memóriam RAM
  
    // --- Entrada de Dados --- 
    
    escreva("Digite o 1º Número: ") // a função escreva apenas mostra um texto qualquer na tela
    leia(n1) // armazena o que foi digitado pelo usuário (teclado = dispositivo de entrada) na variável n1 que está na memória RAM

    escreva("Digite o 2º Número: ") // a função escreva apenas mostra um texto qualquer na tela
    leia(n2) // armazena o que foi digitado pelo usuário (teclado = dispositivo de entrada) na variável n2 que está na memória RAM

    // --- Processamento ---
    
    resultado = n1 + n2 // armazena na variável resultado a soma de n1 + n2

    // --- Saída ---
    
    escreva("\nO resultado da soma é: ", resultado) // mostra na tela o texto "O resultado da soma é " + o que está armazenado na variável resultado

    escreva("\nA soma de ", n1, " + ", n2, " é igual a ", resultado) // outra forma de fazer a mesma coisa
    
  }
}
