Dado('que desejo visualizar as caracteristicas de um produto') do             
    
    visit("http://automationpractice.com/")

  end                                                                           
                                                                                
Quando('realizo uma busca pelo nome') do         
    busca = Busca.new      
                           
    fill_in busca.box, with: 'Faded Short Sleeve'

    click_button 'submit_search'
    
    sleep 2
end                                                                           
                                                                                
E('seleciono o botão Quick View') do     

    find(".product_img_link").click
    sleep 3
end                                                                           
                                                                                
Então('visualizo os detalhes do produto pesquisado') do                       
    sleep 3
    
    expect(find('#short_description_content').text).to eql "Faded short sleeve t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!"

end                                                                           
