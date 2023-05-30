class User < ApplicationRecord
  has_many :categories
  has_many :transactions
  validates :name, presence: true, length: { in: 1..50 }
end
