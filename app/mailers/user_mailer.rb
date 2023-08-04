class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @user = params[:user]
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Thank you for creating an account with our website.')
  end
end
