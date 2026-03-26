programa
{
    funcao inicio()
    {
        inteiro x, y, z, w

        leia(x)
        leia(y)
        leia(z)

        se (x >= y ou x >= z)
        {
            w = x * y
        }
        senao
        {
            w = x + z
        }

        escreva(w)
    }
}