programa {
    funcao inicio() {
        inteiro x, i, soma

        soma = 0

        escreva("Digite um número: ")
        leia(x)

        para(i = 1; i <= x; i++) {
            se(i % 2 != 0) {
                soma = soma + i
            }
        }

        escreva("Soma dos ímpares: ", soma)
    }
}