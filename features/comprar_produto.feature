#language:pt

Funcionalidade: Fluxo de Compra de produtos
    Como Cliente do E-commerce
    Preciso realizar o fluxo de compra
    Para buscar o produto e realizar a compra
    
    @smoke
    Cenário: Comprar produto

        Dado que desejo comprar um produto
        Quando realizo uma busca pelo produto
        E adciono o produto no carrinho
        E vizualizo o sumário da compra
        E faço o login em minha conta
        E confirmo o endereço de entrega
        E escolho a opção de envio
        E seleciono a forma de pagamento
        Então finalizo a compra

            
    Cenário: Pesquisar produto

        Dado que desejo visualizar as caracteristicas de um produto
        Quando realizo uma busca pelo nome
        E seleciono o botão Quick View
        Então visualizo os detalhes do produto pesquisado