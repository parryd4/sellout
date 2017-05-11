class User < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_secure_password
#  has_many :transactions
  has_many :comments
#  has_many :arts, through: :comments
  has_many :arts

  has_many :user_art_views


  def recently_viewed_arts

  end
end
