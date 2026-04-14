programa {
    funcao inicio() {
        inteiro i, x

        escreva("Digite um número: ")
        leia(x)

        para(i = 1; i <= x; i++) {
            se(i % 2 == 0) {
                escreva(i, "\n")
            }
        }
    }
}