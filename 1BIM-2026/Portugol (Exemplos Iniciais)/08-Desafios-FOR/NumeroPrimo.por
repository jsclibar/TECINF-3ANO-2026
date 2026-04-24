programa
{
    funcao inicio()
    {
        // Número digitado pelo usuário
        inteiro numero

        // Conta quantos divisores exatos o número possui
        inteiro contador = 0

        // Variável usada no laço de repetição
        inteiro i

        // Solicita um número ao usuário
        escreva("Digite um numero: ")
        leia(numero)

        // ------------------------------------------------
        // Este FOR testa todas as divisões possíveis
        // do número digitado.
        //
        // Vai de 1 até o próprio número.
        //
        // Exemplo se numero = 7:
        // testa:
        // 7 % 1
        // 7 % 2
        // 7 % 3
        // 7 % 4
        // 7 % 5
        // 7 % 6
        // 7 % 7
        // ------------------------------------------------
        para(i = 1; i <= numero; i++)
        {
            // Se o resto da divisão for zero,
            // significa que a divisão é exata
            se(numero % i == 0)
            {
                // Encontrou um divisor do número
                contador = contador + 1
            }
        }

        // -----------------------------------------------
        // Número primo possui exatamente 2 divisores:
        // 1 e ele mesmo
        //
        // Exemplo:
        // 7 divide por 1 e 7
        // contador = 2
        // -----------------------------------------------
        se(contador == 2)
        {
            escreva("O numero ", numero, " e primo.")
        }
        senao
        {
            escreva("O numero ", numero, " nao e primo.")
        }
    }
}