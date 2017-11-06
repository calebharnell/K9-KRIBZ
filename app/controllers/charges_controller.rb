class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 1499

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    current_user.paid = true
    current_user.save

    @to_email = params[:stripeEmail]
    TransactionMailer.transaction_notification(@to_email).deliver_now

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
