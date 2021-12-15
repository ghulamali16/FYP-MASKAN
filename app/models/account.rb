# frozen_string_literal: true

class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  has_many :properties
  has_many :projects , dependent: :destroy
  has_one_attached :image, :dependent => :destroy
  has_one_attached :cover_image, :dependent => :destroy
  enum roles: [:agent, :builder, :designer, :user]

   scope :agents, -> { where(roles: :agent) }
   scope :builders, -> { where(roles: :builder) }
   scope :designers, -> { where(roles: :designer) }

  def full_name
    "#{first_name} #{last_name}"
  end
end
