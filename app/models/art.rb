class Art < ApplicationRecord
#  has_many :transactions
#  has_many :users, through: :transactions
  has_many :comments
  belongs_to :user
  has_many :users, through: :comments
end
