# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    @show_sidebar = true if account_signed_in?
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image, :cover_image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image, :cover_image])

  end
end
