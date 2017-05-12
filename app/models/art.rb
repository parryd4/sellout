class Art < ApplicationRecord
  validates :picture, presence: true

  has_many :transactions


  mount_uploader :picture, PictureUploader

  has_many :comments
  belongs_to :user
  has_many :users, through: :comments

  has_many :user_art_views

  belongs_to :category
end
