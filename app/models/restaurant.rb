class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :category, :address, presence: true
  validates :category, inclusion: { in: %w[
    chinese italian japanese french belgian
  ] }
end
