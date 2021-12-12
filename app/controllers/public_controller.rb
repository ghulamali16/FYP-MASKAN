# frozen_string_literal: true

class PublicController < ApplicationController
  def main
    if account_signed_in?
      path = current_account.admin? ? accounts_path : dashboard_path
      redirect_to(path, flash:
        { success: 'Successfully signed in. Welcome to Maskan' }) && return
    end


    @posts = Post.latest
    @q = Property.ransack(params[:q])
    @properties = @q.result
  end

end

