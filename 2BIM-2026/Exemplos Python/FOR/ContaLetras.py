contador = 0
 
palavra = input('Digite uma palavra: ').lower()
letra = input('Digite uma letra: ').lower()
 
for i in palavra:
    if i == letra:
        contador += 1
print(f'Na palavra "{palavra.capitalize()}" a letra "{letra.capitalize()}" aparece {contador} veze(s)')
 