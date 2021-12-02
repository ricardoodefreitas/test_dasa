Dado('que esteja na tela para cadastrar usuario') do
    visit('')
    binding.pry
  end
  
  Quando('enviar as informacoes de cadastro') do
    x = constructor_main_action.create_todo
    binding.pry    
  end
  
  Entao('o sistema deve ser redirecionado para tela de login') do
  end