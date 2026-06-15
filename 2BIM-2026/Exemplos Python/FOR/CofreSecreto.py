# 💡 SENHA DO COFRE - Resolução completa com comentários

# Define a senha correta do cofre (fixa neste exemplo)
senha_correta = 7342

# Exibe uma mensagem inicial para o usuário
print("🔐 Bem-vindo ao sistema do Cofre Secreto!")
print("Você tem 5 tentativas para descobrir a senha de 4 dígitos.\n")

# Laço de repetição que permite até 5 tentativas
for tentativa in range(1, 6):  # range(1, 6) gera os números: 1, 2, 3, 4, 5
    
    # Solicita ao usuário que digite uma tentativa de senha
    chute = int(input(f"Tentativa {tentativa} → Digite a senha: "))
    
    # Verifica se a senha digitada está correta
    if chute == senha_correta:
        print("✅ Cofre aberto com sucesso! Parabéns!")
        break  # Interrompe o laço porque a senha foi descoberta
    elif chute < senha_correta:
        # Informa que a senha correta é maior que o chute
        print("🔒 A senha correta é MAIOR do que esse número.")
    else:
        # Informa que a senha correta é menor que o chute
        print("🔒 A senha correta é MENOR do que esse número.")

    # Se esta foi a última tentativa (quinta), informa que o sistema foi bloqueado
    if tentativa == 5:
        print("\n❌ Você usou todas as tentativas. Sistema bloqueado.")