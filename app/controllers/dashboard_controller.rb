# frozen_string_literal: true
require 'faker'
class DashboardController < ApplicationController
  before_action :set_sidebar

  def index
    @company = Faker::Company.bs
    @quote =  Faker::Quotes::Shakespeare.as_you_like_it_quote
    @quote_author = Faker::Book.author
    @book =   Faker::Book.title
  end

  def profile
    @account = Account.find(params[:id])
    @properties = Property.where(account_id: @account.id)

    @properties_sold = Property.where(account_id: @account.id).sold.count
    @properties_for_sale = Property.where(account_id: @account.id).for_sale.count
    @properties_leased = Property.where(account_id: @account.id).leased.count
    @properties_for_rent = Property.where(account_id: @account.id).for_rent.count
    @projects_completed = Project.where(account_id: @account.id).completed.count
    @projects_incomplete = Project.where(account_id: @account.id).incomplete.count
    @projects_under_progress = Project.where(account_id: @account.id).under_progress.count
    @projects_total = @projects_under_progress + @projects_incomplete + @projects_completed
  end


  private

  def set_sidebar
    @show_sidebar = true if account_signed_in?
  end
end
