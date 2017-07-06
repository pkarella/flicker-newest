class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :image
  validates_uniqueness_of :user_id, :scope => :image_id
end
