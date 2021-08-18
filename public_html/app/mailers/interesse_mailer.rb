class InteresseMailer < ActionMailer::Base
  def interesse(nome,email,mensagem,telefone)
    @nome = nome
    @email = email
    @mensagem = mensagem
    @telefone = telefone
   mail(:from => @email, :bcc => "suportecriativitta2@gmail.com", :to => "contato@atsibrasil.com.br", :subject => "Contato do site atsibrasil.com.br", :reply_to => @email)
 end
end
