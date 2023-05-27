Dado('que o usuario queira se logar') do
  login.load
end

Quando('ele digitar as credenciais validas') do
  login.userlogin(CREDENTIAL[:user][:email],CREDENTIAL[:user][:password])
end

Então('deve acessar o site com sucesso') do 
  home.verificarlogin
end
