class ContactMailer < ActionMailer::Base
  default to: 'faisal.hassanx@gmail.com'
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: email, subject: 'Contact Form Message from GitConnect', message)
  end
end