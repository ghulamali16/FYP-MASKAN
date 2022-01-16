# frozen_string_literal: true

class PublicController < ApplicationController
  def main
    if account_signed_in? && current_account.roles != 'user'
      path = current_account.admin? ? accounts_path : dashboard_path
      redirect_to(path, flash:
        { success: 'Successfully signed in. Welcome to Maskan' }) && return
   else
      @posts = Post.latest
      @q = Property.ransack(params[:q])
      @properties = @q.result.page(params[:page])
   end
  end

end

