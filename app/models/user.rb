class User < ApplicationRecord
  validates :name, :email, :city, :country, presence: true
  validates :email, uniqueness: true
end
