# Importa a biblioteca random
# Ela será usada para sortear o número secreto
import random

# Importa a biblioteca time
# Ela será usada para calcular o tempo da partida
import time

# =========================
# INÍCIO DO JOGO
# =========================

print('=' * 30) # Imprime uma linha de 30 caracteres '='
print('JOGO DE ADIVINHAÇÃO'.center(30)) # Imprime o título do jogo centralizado em 30 caracteres
print('=' * 30) # Imprime outra linha de 30 caracteres '='

# Marca o horário inicial da partida

inicio = time.time() # Guarda o horário atual em segundos

# =========================
# ESCOLHA DA DIFICULDADE
# =========================

# quando usamos três aspas seguidas, podemos escrever um texto
# em várias linhas, sem precisar usar o caractere de quebra de linha '\n'
# O texto é impresso exatamente como foi escrito, incluindo os espaços
# a variável 'menu' guarda o texto do menu de escolha da dificuldade
menu = '''
Escolha a dificuldade:
1 - Fácil
2 - Médio
3 - Difícil
4 - Desisto! Não quero jogar.
'''
print(menu) # Imprime o menu de escolha da dificuldade

dificuldade = int(input('Digite a dificuldade: ')) # Lê a dificuldade escolhida pelo jogador e converte para inteiro

while dificuldade not in [1, 2, 3, 4]: # Verifica se a dificuldade digitada é válida (1, 2, 3 ou 4). Foi usado o not in para verificar se a dificuldade não está na lista de opções válidas
    print('Dificuldade inválida! Tente novamente.') # Imprime uma mensagem de erro caso a dificuldade seja inválida
    dificuldade = int(input('Digite a dificuldade: ')) # Lê novamente a dificuldade escolhida pelo jogador e converte para inteiro

if dificuldade == 1: # Se a dificuldade for 1 (Fácil)
    limite = 50 # O limite do número secreto será 50
    vidas = 10 # O jogador terá 10 vidas (tentativas) para acertar o número secreto

elif dificuldade == 2: # Se a dificuldade for 2 (Médio)
    limite = 100 # O limite do número secreto será 100
    vidas = 7 # O jogador terá 7 vidas (tentativas) para acertar o número secreto

elif dificuldade == 3: # Se a dificuldade for 3 (Difícil)
    limite = 500 # O limite do número secreto será 500
    vidas = 5 # O jogador terá 5 vidas (tentativas) para acertar o número secreto

elif dificuldade == 4: # Se a dificuldade for 4 (Desisto)
    print('Que pena! Você desistiu do jogo.') # Imprime uma mensagem de despedida caso o jogador escolha desistir do jogo
    exit() # Encerra o programa imediatamente

# =========================
# SORTEIO DO NÚMERO
# =========================

# Sorteia um número aleatório entre 1 e o limite escolhido
# A função random.randint(a, b) retorna um número inteiro aleatório entre a e b. Observe que o número sorteado pode estar entre 1 e o limite
numero_secreto = random.randint(1, limite) # Guarda o número secreto sorteado

# =========================
# VARIÁVEIS DE CONTROLE
# =========================

# Conta quantas tentativas o jogador realizou
tentativas = 0

# Controla se o jogador venceu
venceu = False

# =========================
# LOOP PRINCIPAL DO JOGO
# =========================

while vidas > 0 and venceu == False: # Enquanto o jogador tiver vidas e não tiver vencido, o jogo continua

    linha = '=' * 30 # Imprime uma linha de 30 caracteres '=' para separar as rodadas do jogo
    print(f'\n{linha}') # Imprime a linha de separação
    print(f'Vidas restantes: {vidas}') # Imprime o número de vidas restantes do jogador
    print(linha) # Imprime outra linha de 30 caracteres '=' para separar as informações

    # Jogador digita um número
    chute = int(input('Digite seu palpite: '))

    tentativas += 1 # Incrementa o número de tentativas realizadas pelo jogador (equivalente a tentativas = tentativas + 1)

    # =========================
    # VERIFICAÇÕES
    # =========================

    # Se acertou o número

    if chute == numero_secreto:
        print('\nParabéns! Você acertou!')
        # Define que o jogador venceu
        venceu = True # se venceu for True, o while vai parar, pois a condição venceu == False não será mais satisfeita

    # Se o número digitado for maior
    elif chute > numero_secreto: 
        print('O número secreto é MENOR.')
        # Perde uma vida
        vidas -= 1 # equivalente a vidas = vidas - 1, ou seja, subtrai 1 do número de vidas restantes do jogador

    # Se o número digitado for menor
    else:
        print('O número secreto é MAIOR.')
        # Perde uma vida
        vidas -= 1 # equivalente a vidas = vidas - 1, ou seja, subtrai 1 do número de vidas restantes do jogador

# =========================
# FIM DA PARTIDA
# =========================

# Marca o horário final
fim = time.time() # Guarda o horário atual em segundos, que representa o fim da partida

# Calcula o tempo total da partida
tempo_total = fim - inicio

linha = '=' * 30 # Imprime uma linha de 30 caracteres '=' para separar as informações finais da partida
print(linha) # Imprime a linha de separação
print('FIM DE JOGO'.center(30)) # Imprime a mensagem "FIM DE JOGO" centralizada em 30 caracteres
print(linha) # Imprime outra linha de 30 caracteres '=' para separar as informações finais da partida

# Verifica se venceu ou perdeu
if venceu == True: # verificamos se venceu pois o while também pode parar quando as vidas chegarem a 0, ou seja, quando o jogador perder
    print('Resultado: VOCÊ VENCEU!')
else:
    print('Resultado: VOCÊ PERDEU!')

# Mostra informações finais da partida

print(f'Número secreto: {numero_secreto}')
print(f'Tentativas realizadas: {tentativas}')
print(f'Vidas restantes: {vidas}')
print(f'Tempo total: {tempo_total:.2f} segundos')