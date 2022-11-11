class User < ApplicationRecord
  validates :name, :email, :city, :country, presence: true
  validates :email, uniqueness: true
  before_save :check_state

  def check_state
    self.state = self.country if state.nil?
  end
end
