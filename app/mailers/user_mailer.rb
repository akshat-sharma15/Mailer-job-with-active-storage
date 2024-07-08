class UserMailer < ApplicationMailer
  default from: 'akshat.sharma@webkorps.com'
  # def welcome_email(user)
  #   @user = user
  #   @url  = 'http://example.com/login'
  #   Rails.logger.debug "Sending welcome email to #{@user.email}"
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

