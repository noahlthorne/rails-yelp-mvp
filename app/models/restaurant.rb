class Restaurant < ApplicationRecord
  CATEGORIES = %w(french belgian italian pizza indian japanese chinese american)
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
