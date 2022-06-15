class AdminMailer < ApplicationMailer
  default :from => 'achyutkadam27@gmail.com'

  def send_email(admin)
    @admin = admin
    mail(to: @admin.email, subject: 'Welcome to my applicaiton!')
  end
end
