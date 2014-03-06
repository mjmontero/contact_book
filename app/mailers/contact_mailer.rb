class ContactMailer < ActionMailer::Base
  default from: 'noreply@regroup.com'

  def welcome_email(contact)
    @contact = contact
    #@url  = 'http://example.com/login'
    mail(to: @contact.email, subject: 'Welcome to My Contact Book')
  end
  
end