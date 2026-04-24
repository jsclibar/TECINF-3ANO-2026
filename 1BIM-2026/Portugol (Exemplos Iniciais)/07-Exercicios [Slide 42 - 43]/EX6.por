programa {
    funcao inicio() {
        inteiro x, i

        escreva("Digite um número: ")
        leia(x)

        para(i = 1; i <= x; i++) {

            se(i % 3 == 0 e i % 5 == 0) {
                escreva("FizzBuzz\n")
            }
            senao se(i % 3 == 0) {
                escreva("Fizz\n")
            }
            senao se(i % 5 == 0) {
                escreva("Buzz\n")
            }
            senao {
                escreva(i, "\n")
            }

        }
    }
}