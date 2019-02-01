# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'thpstudent@gmail.com'
  def offer(user, text)
    @user = user
    @text = text
    mail(to: @user.email, subject: 'Check out our new Zero Waste offer!')
  end
end
