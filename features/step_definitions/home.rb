Dado('que eu click em {string}') do |string|
    find("span[class*='styles__ActivatorButton']").click
  end
  
  Dado('click em {string}') do |string|
   find(:xpath, "//ul//li//a[text()='#{string}']").click
  end
  
  Então('sou redirecionado para tela de serviços pet') do
   elemento1 = find("div[class*='Welcome__Text']")
   elemento2 = find(:xpath, "//div[text()='Agende o serviço com os Anjos parceiros.']")

   expect(elemento1.visible?).to be true
   expect(elemento2.visible?).to be true
  end