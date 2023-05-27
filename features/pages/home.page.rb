class HomePage < SitePrism::Page

    element :username, :xpath, "//div[@class='t-16 t-black t-bold']"
    element :navbarhome, :xpath, "//button[@id='ember25']"
    element :myicon, :xpath, "//span[@title='Minha rede']"

    def verificarlogin
        expect(username.text).to eql 'AccountName'
        expect(navbarhome.text).to  eql 'Começar publicação'
        expect(myicon.text).to eql 'Minha rede'
    end 

end
