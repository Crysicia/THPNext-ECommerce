class UserMailer < ApplicationMailer
  default from: 'from@example.com'
  def offer(user, text)
    @user = user
    @text = text
    mail(to: @user.email, subject: 'Check out our new Zero Waste offer!')
  end
end
