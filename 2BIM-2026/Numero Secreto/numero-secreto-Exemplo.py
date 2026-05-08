import random

# O computador escolhe um número
numero_secreto = random.randint(1, 100)

fim_jogo = False # Variável booleana para controlar o fim do jogo

print('Bem-vindo ao jogo de adivinhação!')
print(f'Número sorteado foi: {numero_secreto}') # Exibe o número secreto para facilitar os testes

while not fim_jogo: # Enquanto fim_jogo for False, o jogo continua
    chute = int(input('Digite seu palpite: ')) # O jogador digita um número e o converte para inteiro
    if chute == numero_secreto: # Se o chute for igual ao número secreto, o jogador ganha
        print('Você ganhou!') 
        fim_jogo = True # O jogo termina, pois fim_jogo é definido como True
    else: # Se o chute for diferente do número secreto, o jogador perde
        print('Você perdeu!')