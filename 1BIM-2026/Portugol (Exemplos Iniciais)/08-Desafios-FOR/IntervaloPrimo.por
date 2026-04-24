programa
{
    funcao inicio()
    {
        // Número inicial do intervalo
        inteiro inicio_intervalo

        // Número final do intervalo
        inteiro fim_intervalo

        // Número atual que será analisado
        inteiro numero

        // Valor usado para testar divisões
        inteiro divisor

        // Conta quantas divisões exatas o número possui
        inteiro contador

        // Entrada de dados
        escreva("Digite o primeiro numero: ")
        leia(inicio_intervalo)

        escreva("Digite o segundo numero: ")
        leia(fim_intervalo)

        escreva("Numeros primos no intervalo:\n")

        // ---------------------------------------------------
        // PRIMEIRO FOR
        // Percorre todos os números do intervalo informado
        //
        // Exemplo:
        // Se o usuário digitar 10 e 15,
        // este for analisará:
        // 10, 11, 12, 13, 14 e 15
        // ---------------------------------------------------
        para(numero = inicio_intervalo; numero <= fim_intervalo; numero++)
        {
            // Zera o contador para começar a analisar
            // um novo número
            contador = 0

            // Apenas números maiores que 1 podem ser primos
            se(numero > 1)
            {
                // --------------------------------------------
                // SEGUNDO FOR
                // Testa todas as divisões possíveis
                // do número atual.
                //
                // Se numero = 7, este for fará:
                // 7 % 1
                // 7 % 2
                // 7 % 3
                // 7 % 4
                // 7 % 5
                // 7 % 6
                // 7 % 7
                //
                // Sempre de 1 até ele mesmo.
                // --------------------------------------------
                para(divisor = 1; divisor <= numero; divisor++)
                {
                    // Se o resto da divisão for zero,
                    // significa que a divisão é exata
                    se(numero % divisor == 0)
                    {
                        // Encontrou um divisor válido
                        contador = contador + 1
                    }
                }

                // --------------------------------------------
                // Número primo possui apenas 2 divisores:
                // 1 e ele mesmo
                //
                // Exemplo:
                // 7 divide por 1 e 7
                // contador = 2
                // --------------------------------------------
                se(contador == 2)
                {
                    escreva(numero, "\n")
                }
            }
        }
    }
}