class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:account).permit(:first_name,:last_name, :email, :password, :passowrd_confirmation, :current_password,:image, :cover_image, :roles, :telephone, :details, :url, :company)  end

  def account_update_params
    params.require(:account).permit(:first_name,:last_name, :email, :password, :passowrd_confirmation, :current_password,:image, :cover_image, :roles, :telephone, :details, :url, :company)
  end
end
