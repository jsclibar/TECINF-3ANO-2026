programa {
    funcao inicio() {
        inteiro x, y, i, contador

        contador = 0

        escreva("Digite o valor de X: ")
        leia(x)

        escreva("Digite o limite Y: ")
        leia(y)

        escreva("Múltiplos encontrados:\n")

        para(i = 1; i <= y; i++) {
            se(i % x == 0) {
                escreva(i, "\n")
                contador = contador + 1
            }
        }

        escreva("Quantidade de múltiplos: ", contador)
    }
}