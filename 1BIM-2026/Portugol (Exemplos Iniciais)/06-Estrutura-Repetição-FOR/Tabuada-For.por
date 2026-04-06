programa {
    funcao inicio() {
        inteiro x
        inteiro i

        escreva("Digite um número: ")
        leia(x)

        para(i = 1; i <= 10; i++) {
            escreva(x, " x ", i, " = ", x * i, "\n")
        }
    }
}