programa {
    funcao inicio() {
        inteiro i, x

        escreva("Digite o valor de X: ")
        leia(x)

        para(i = 1; i <= x; i++) {
            escreva("Número: ", i, " - Quadrado: ", i * i, "\n")
        }
    }
}