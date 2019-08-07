class Restaurant < ApplicationRecord
  RESTAURANT_CATEGORY = ['chinese', 'japanese', 'italian', 'french', 'belgian']

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: RESTAURANT_CATEGORY }
end
