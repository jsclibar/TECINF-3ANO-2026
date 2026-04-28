programa {
    funcao inicio() {

        inteiro numero
        inteiro posicao

        // Começa na 1ª posição
        posicao = 1

        escreva("Digite um número (0 para encerrar): ")
        leia(numero)

        // Continua até digitar zero
        enquanto (numero != 0) {

            // Verifica se o número é múltiplo da posição
            se (numero % posicao == 0) {
                escreva(numero, " é múltiplo da posição ", posicao, "\n")
            }

            // Vai para a próxima posição
            posicao = posicao + 1

            escreva("Digite outro número (0 para encerrar): ")
            leia(numero)
        }

        escreva("Programa encerrado.\n")
    }
}