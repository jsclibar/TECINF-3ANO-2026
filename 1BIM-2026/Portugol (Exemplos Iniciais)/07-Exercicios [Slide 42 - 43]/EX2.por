programa {
    funcao inicio() {
        inteiro i
        real numero, soma, media

        soma = 0

        para(i = 1; i <= 5; i++) {
            escreva("Digite o ", i, "º número: ")
            leia(numero)
            soma = soma + numero
        }

        media = soma / 5

        escreva("Média: ", media)
    }
}