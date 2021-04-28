Dado('que desejo visualizar as caracteristicas de um produto') do             
    
    visit("http://automationpractice.com/")

  end                                                                           
                                                                                
Quando('realizo uma busca pelo nome') do         
           
    fill_in 'search_query_top', with: 'Faded Short Sleeve'

    click_button 'submit_search'
    
end                                                                           
                                                                                
E('seleciono o botão Quick View') do     

    find(".product_img_link").click

end                                                                           
                                                                                
Então('visualizo os detalhes do produto pesquisado') do                       
    
    expect(find('#short_description_content').text).to eql "Faded short sleeve t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!"

end                                                                           
