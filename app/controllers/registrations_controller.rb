class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:account).permit(:name, :email, :password, :password_confirmation, :image, :cover_image, :roles)
  end

  def account_update_params
    params.require(:account).permit(:name, :email, :password, :passowrd_confirmation, :current_password,:image, :cover_image, :roles)
  end
end
