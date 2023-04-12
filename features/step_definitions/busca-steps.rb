Dado('que eu realize uma busca de produto {string}') do |busca|
find("input[placeholder='Para seu pet ou sua casa, procure aqui']").set busca
click_link(busca)
end

Dado('selecione um produto') do
# produtos = find_all("div[data-testid='product-item']").sample
# produtos.click
produtos = find_all("div[data-testid='product-item']")
produtos[0].click
end

Então('devo ser redirecionado para a PDP com sucesso') do
botton1 = find("button", text: "Adicionar ao carrinho")
botton2 = find(:xpath, '//button[text()="Comprar e programar"]')
expect(botton1.visible?).to be true
expect(botton2.visible?).to be true

end