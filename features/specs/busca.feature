# language: pt
Funcionalidade: Busca de produto

  @busca @teste
  Cenario: Realizar busca de produto com sucesso
    Dado que eu realize uma busca de produto "ração cachorro"
    E selecione um produto
    Então devo ser redirecionado para a PDP com sucesso
