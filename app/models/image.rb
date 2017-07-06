class Image < ApplicationRecord
  belongs_to :user
  has_many :favorites
  validates :image, :presence => true
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.get_favorited_images(user_id)
    user_favorites = Favorite.where(user_id: user_id)
    user_favorite_images = []
    user_favorites.each() do |favorite|
      image_id = favorite.image_id
      user_favorite_images.push(image_id)
    end
    user_favorite_images
  end
end
