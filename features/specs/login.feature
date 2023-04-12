# language: pt
Funcionalidade: Login

@login
  Cenario: Login realizado com sucesso
    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realize login com "gabriel.lopes@cobasi.com.br" e "Cobasi@123"
    Então devo estar logado
 
  @login_assinatura
  Cenario: Login pelo menu de assinatura
    Dado que eu acesse a tela de assinatura
    Quando eu clique no botão entrar
    E acesse a opção email e senha
    E realize login com "gabriel.lopes@cobasi.com.br" e "Cobasi@123"
    Então devo ser redirecionado para a tela de assinatura

  @login_com_falha
  Esquema do Cenario: Realizar login com falha
    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realize login com "<email>" e "<senha>"
    Então devo ver a "<mensagem>" com sucesso

    Exemplos: 
      | email                       | senha      | mensagem                   |
      | gabriel.lopes@cobasi.com.br |            | E-mail ou senha inválidos. |
      | gabriel@cobasi.com.br       | Cobasi@123 | E-mail ou senha inválidos. |
      |                             | Cobasi@123 | E-mail ou senha inválidos. |
      |                             |            | E-mail ou senha inválidos. |
      | gabriel.lopes@cobasi.com.br | Cobasi1234 | E-mail ou senha inválidos. |
