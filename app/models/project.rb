class Project < ApplicationRecord
  enum statuses: [:under_progress, :completed, :incomplete]
  has_one_attached :photo
  belongs_to :account


  def boxy
    if self.photo.present?
      self.photo.variant(resize: "1080x1080")
    else
      self.photo
    end
  end


end
