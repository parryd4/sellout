class Art < ApplicationRecord
  has_many :transactions

  has_many :comments
  belongs_to :user
  has_many :users, through: :comments

  has_many :user_art_views

  belongs_to :category
end
