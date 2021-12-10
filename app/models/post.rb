# frozen_string_literal: true

class Post < ApplicationRecord
  has_one_attached :image
  scope :active, -> { where(active: true) }
  scope :latest, -> { order created_at: :desc }
end
