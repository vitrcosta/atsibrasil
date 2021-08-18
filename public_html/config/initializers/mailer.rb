# config/initializers/mailer.rb
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :openssl_verify_mode => 'none',
    :address => 'mail.criativitta.com.br',
    :port => 25,
    :user_name => 'suporte@criativitta.com.br',
    :password => 'Criativitt4',
    :authentication => :login
}
