class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  has_many :comments
#  has_many :arts, through: :comments
  has_many :arts

  has_many :user_art_views

  
  def pending_transactions
    Transaction.all.select { |t| t.art.user == self }


  end
end
