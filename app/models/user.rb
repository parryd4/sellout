class User < ApplicationRecord
#  has_many :transactions
  has_many :comments
#  has_many :arts, through: :comments
  has_many :arts

  has_many :user_art_views
end
