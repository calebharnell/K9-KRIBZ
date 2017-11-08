class RegistrationsController < Devise::RegistrationsController
  def create
    super
    # Mailgun welcome email after devise create
    if @user.save
      @to_email = @user.email
      AuthenticationMailer.welcome_notification(@to_email).deliver_now
    end
  end

  private
  # Add extra params to devise
  def sign_up_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :suburb, :state, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :suburb, :state, :email, :password, :password_confirmation, :current_password)
  end
end
