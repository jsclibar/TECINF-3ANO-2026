n1 = float(input('Digite a nota da 1º Prova: '))
n2 = float(input('Digite a nota da 2º Prova: '))
n3 = float(input('Digite a nota da 3º Prova: '))

media = (n1 + n2 + n3) / 3

print(f'A média final é: {media}')

if media >= 6:
    print('Você está aprovado!')
elif media >= 4:
    print('Você precisa de recuperação!')
else:
    print('Você está reprovado!')
