class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :entities, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true, length: { maximum: 100 }
end
