import random

menu = '''
Escolha a dificuldade:
1 - Fácil
2 - Médio
3 - Difícil
4 - Desisto! Não quero jogar.
'''
print(menu)  # Imprime o menu de escolha da dificuldade

dificuldade = int(input('Digite a dificuldade: '))

if dificuldade == 1:  # Se a dificuldade for 1 (Fácil)
    limite = 50  # O limite do número secreto será 50
    # O jogador terá 10 vidas (tentativas) para acertar o número secreto
    vidas = 10

elif dificuldade == 2:  # Se a dificuldade for 2 (Médio)
    limite = 100  # O limite do número secreto será 100
    # O jogador terá 7 vidas (tentativas) para acertar o número secreto
    vidas = 7

elif dificuldade == 3:  # Se a dificuldade for 3 (Difícil)
    limite = 500  # O limite do número secreto será 500
    # O jogador terá 5 vidas (tentativas) para acertar o número secreto
    vidas = 5

elif dificuldade == 4:  # Se a dificuldade for 4 (Desisto)
    # Imprime uma mensagem de despedida caso o jogador escolha desistir do jogo
    print('Que pena! Você desistiu do jogo.')
    exit()  # Encerra o programa imediatamente


# O computador escolhe um número
numero_secreto = random.randint(1, limite)

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