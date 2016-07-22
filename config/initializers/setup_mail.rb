ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.croiodontologia.com.br",
  :port => 587,
  :domain => "croiodontologia.com.br",
  :user_name => "croiodontologia@croiodontologia.com.br",
  :password => "cr012016",
  :authentication => :login,
  :enable_starttls_auto => false,
  :openssl_verify_mode  => 'none'
}
ActionMailer::Base.default_url_options[:host] = "croiodontologia.com.br"
#ActionMailer::Base.default_url_options[:host] = "localhost:3000" oie
require 'development_mail_interceptor'
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
