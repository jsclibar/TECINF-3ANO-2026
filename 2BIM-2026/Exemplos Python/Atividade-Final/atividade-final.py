media_aprovacao = float(input("Informe a média para aprovação: "))
quantidade = int(input("Quantos alunos serão cadastrados? "))

soma = 0
maior_nota = 0
menor_nota = 10
aluno_maior_nota = ""

aprovados = []
reprovados = []

for i in range(quantidade):
    print(f"\nAluno {i + 1}")
    nome = input("Nome: ")
    nota = float(input("Nota: "))

    while nota < 0 or nota > 10:
        print("Nota inválida!")
        nota = float(input("Digite uma nota entre 0 e 10: "))

    soma = soma + nota

    if nota > maior_nota:
        maior_nota = nota
        aluno_maior_nota = nome

    if nota < menor_nota:
        menor_nota = nota

    if nota >= media_aprovacao:
        aprovados.append(nome)
    else:
        reprovados.append(nome)

media_turma = soma / quantidade

opcao = -1

while opcao != 0:
    print("\n===== MENU =====")
    print("1 - Mostrar média da turma")
    print("2 - Mostrar quantidade de aprovados")
    print("3 - Mostrar quantidade de reprovados")
    print("4 - Mostrar maior nota")
    print("5 - Mostrar menor nota")
    print("6 - Mostrar aluno com maior nota")
    print("7 - Mostrar alunos aprovados")
    print("8 - Mostrar alunos reprovados")
    print("0 - Encerrar programa")

    opcao = int(input("Escolha uma opção: "))

    if opcao == 1:
        print(f"Média da turma: {media_turma:.2f}")

    elif opcao == 2:
        print(f"Quantidade de aprovados: {len(aprovados)}")

    elif opcao == 3:
        print(f"Quantidade de reprovados: {len(reprovados)}")

    elif opcao == 4:
        print(f"Maior nota: {maior_nota}")

    elif opcao == 5:
        print(f"Menor nota: {menor_nota}")

    elif opcao == 6:
        print(f"Aluno com maior nota: {aluno_maior_nota}")

    elif opcao == 7:
        print("\nAlunos aprovados:")
        for aluno in aprovados:
            print(aluno)

    elif opcao == 8:
        print("\nAlunos reprovados:")
        for aluno in reprovados:
            print(aluno)

    elif opcao == 0:
        print("Programa encerrado.")

    else:
        print("Opção inválida!")