class Project < ApplicationRecord
  enum statuses: [:under_progress, :completed, :incomplete]
  has_one_attached :photo
  belongs_to :account

end
