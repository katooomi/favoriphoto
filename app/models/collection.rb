class Collection < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
