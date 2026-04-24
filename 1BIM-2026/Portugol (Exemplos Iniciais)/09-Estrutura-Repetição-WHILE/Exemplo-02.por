programa {
  funcao inicio() {

    cadeia senha

    escreva("Digite a senha: ")
    leia(senha)

    enquanto (senha != "1234") {
      escreva("Senha incorreta. Tente novamente: ")
      leia(senha)
    }

    escreva("Acesso permitido.\n")
  }
}

/*
  Este programa solicita que o usuário digite uma senha.
  Enquanto a senha digitada for diferente de "1234",
  o programa continuará pedindo a senha.
  Ao digitar a senha correta, o acesso é permitido.