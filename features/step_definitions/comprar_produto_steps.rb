Dado('que desejo comprar um produto') do             
    
    visit("http://automationpractice.com/")

  end                                                                           
                                                                                
Quando('realizo uma busca pelo produto') do               
                           
    fill_in 'search_query_top', with: 'Faded Short Sleeve'

    click_button 'submit_search'
    
end                                                                           

E('adciono o produto no carrinho') do      
   
    find(".product_img_link").click
    
    find('button[name="Submit"]').click

    find('a[title="Proceed to checkout"]').click
end   
E('vizualizo o sumário da compra') do      

    find('a[title="Proceed to checkout"]').click

end 
E('faço o login em minha conta') do      

    find("#email").set("douglas.andrade@gmail.com")

    find("#passwd").set("12345")

    click_button 'SubmitLogin'

end 
E('confirmo o endereço de entrega') do      

    find('button[name="processAddress"]').click

end 
E('escolho a opção de envio') do      

    find('.checker').click

    click_button 'processCarrier'

end 
E('seleciono a forma de pagamento') do      
    
    find('.bankwire').click

end 

Então('finalizo a compra') do                                                 

    find('button[class="button btn btn-default button-medium"]').click

    expect(find('.page-heading').text).to eql "ORDER CONFIRMATION"

end   