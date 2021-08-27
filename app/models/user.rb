class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :colections
  has_many :likes
  has_many :liked_posts, through: :likes, source: :collection
  def already_liked?(collection)
    self.likes.exists?(collection_id: collection.id)
  end
end
