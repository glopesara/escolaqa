Dado('clicar em Adicionar ao Carrinho') do
    @pdpPage.adicionar_produto_no_carrinho()
end
  
  Dado('clico em Ir para o carrinho') do
    @pdpPage.clicar_ir_para_carrinho()
  end
  
  Dado('finalizar a compra') do
    @carrinhoPage.clicar_finalizar_compra()
  end
  
  Dado('clico em continuar para pagamento') do
    @checkoutPage.continuar_para_pagamento()
  end

  Dado('seleciono o {string} como metódo de pagamento') do |fomar_pagamento|

    @checkoutPage.seleciona_forma_pagamento(fomar_pagamento)

  end
  
  Dado('clico em ir para revisão') do
    @checkoutPage.continuar_para_revisao()
    
  end
  
  Dado('clico em Finalizar a compra') do
    @carrinhoPage.clicar_finalizar_compra()
  end
  
  Então('eu visualizo o código do pix') do
    elemento1 = find("span", text: "Pagar com Pix")
    elemento2 = find("span", text: "Copiar código Pix")

    expect(elemento1.visible?).to be true
    expect(elemento2.visible?).to be true
  end