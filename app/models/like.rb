class Like < ApplicationRecord
  belongs_to :collection
  belongs_to :user
  validates_uniqueness_of :collection_id, scope: :user_id
end
