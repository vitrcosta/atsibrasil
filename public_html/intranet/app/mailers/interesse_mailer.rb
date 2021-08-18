class InteresseMailer < ActionMailer::Base
  def interesse(nome,email,mensagem,telefone)
    @nome = nome
    @email = email
    @mensagem = mensagem
    @telefone = telefone
   mail(:from => @email, :to => "suporte@criativitta.com.br", :subject => "Contato do site intrateste.com.br", :reply_to => @email)
 end
end
