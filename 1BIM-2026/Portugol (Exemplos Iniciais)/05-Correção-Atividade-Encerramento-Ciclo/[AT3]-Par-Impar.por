programa
{
    funcao inicio()
    {
        inteiro num1, num2, x

        leia(num1)
        leia(num2)

        se (num1 % 2 == 0 e num2 % 2 == 0)
        {
            x = num1 + num2
        }
        senao se (num1 % 2 != 0 e num2 % 2 != 0)
        {
            x = num1 * num2
        }
        senao
        {
            x = num1 - num2
        }

        escreva(x)
    }
}