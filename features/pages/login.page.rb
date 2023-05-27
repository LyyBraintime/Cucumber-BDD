class LoginPage < SitePrism::Page

    set_url ''
    element :emailfield, :xpath, "//input[@id='session_key']"
    element :passwordfield, :xpath, "//input[@id='session_password']"
    element :loginbutton, :xpath, "//button[@type='submit']"

  
    def userlogin(email,password)
        emailfield.set (email)
        passwordfield.set (password)
        loginbutton.click
    end
end