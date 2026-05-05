n1 = input('Digite um número: ')
n2 = input('Digite um número: ')

soma = n1 + n2
print(f'A soma é: {soma}')

# Por padrão, variáveis que recebem valores por meio da função input() são do tipo texto (string).
# Por isso, ao somar n1 + n2 diretamente, o resultado será a junção dos dois textos, e não uma soma matemática.
# Para que o valor seja tratado como número inteiro, é necessário converter com a função int() antes do input.
# Para que o valor seja tratado como número real, é necessário converter com a função float() antes do input.
