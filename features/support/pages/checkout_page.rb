class CheckoutPage 

    include Capybara::DSL
    
    def initialize
        @finalizarCompra = CarrinhoPage.new
    end
   
    def continuar_para_pagamento
        find("span", text: "Continuar para pagamento").click
    end

    def seleciona_forma_pagamento(pagamento)
        puts 'Sendo chamado'
        # find("h2", text:"Meio de pagamento")
        case  pagamento
        when "PIX"
            find("h2", text: "Pix").click
            find("strong", text: "O código Pix expira em 10 minutos.")
        when "Boleto"
        end
    end

    def continuar_para_revisao
        find("span", text: "Continuar para revisão").click
    end
    
    def finalizar_compra
        @finalizarCompra.clicar_finalizar_compra()
    end

end