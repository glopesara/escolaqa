Dado('que eu acesse a tela de login') do
   @homePage.clique_login()
end

Dado('acesse a opção email e senha') do
    @loginPage.opcao_login("email e senha")
end

Dado('realize login com {string} e {string}') do |email, senha|
    @loginPage.acessar_conta(email,senha)
end

Então('devo estar logado') do
    expect(page).to have_content('Olá')
end

Então('devo ver a {string} com sucesso') do |mensagem|
    alerta = find("span", text: mensagem)
    expect(alerta.visible?).to be true
end

Dado('que eu acesse a tela de assinatura') do
    @homePage.menu_cabecalho("Compra Programada") 
end
  
Quando('eu clique no botão entrar') do
    @compraProgramadaPage.clique_entrar()
end

Então('devo ser redirecionado para a tela de assinatura') do
    elemento = find("h2", text: "Sua conta")
    expect(elemento.visible?).to be true
end    