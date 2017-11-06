class TransactionMailer < ApplicationMailer
  def transaction_notification(to_email)
    @to_email = to_email
    mail(to: to_email, subject: "Thankyou for upgrading K9 KRIBZ Pro!")
  end
end
