class AuthenticationMailer < ApplicationMailer
  def welcome_notification(to_email)
    @to_email = to_email
    mail(to: to_email, subject: "Welcome to K9 KRIBZ!")
  end
end
