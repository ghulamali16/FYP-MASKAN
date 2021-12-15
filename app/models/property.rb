# frozen_string_literal: true

class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :account
  scope :latest, -> { order created_at: :desc }
  has_many :payment_plans , dependent: :destroy
  scope :sold, -> { where(for_sale: true, status: 'sold') }
  scope :for_sale, -> { where(for_sale: true, status: 'available') }
  scope :leased, -> { where(for_sale: false, status: 'leased') }
  scope :for_rent, -> { where(for_sale: false, status: 'available') }


  def boxy
    if self.photo.present?
      self.photo.variant(resize: "2180x1080")
    else
      self.photo
    end
  end

end
