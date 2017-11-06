class RegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.save
      @to_email = @user.email
      AuthenticationMailer.welcome_notification(@to_email).deliver_now
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :suburb, :state, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :suburb, :state, :email, :password, :password_confirmation, :current_password)
  end
end
