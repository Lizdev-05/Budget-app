class Business < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :category_business, dependent: :destroy
  has_many :categories, through: :category_business

  validates :amount, presence: true
end
