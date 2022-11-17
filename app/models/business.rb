class Business < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_businesses, dependent: :destroy
  has_many :categories, through: :category_businesses

  validates :amount, presence: true
end
