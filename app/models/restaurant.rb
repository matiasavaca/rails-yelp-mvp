class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
