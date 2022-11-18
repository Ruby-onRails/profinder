class User < ApplicationRecord
  has_many :user_skills
  has_many :skills, through: :user_skills
  validates :name, :email, :city, :country, :phone_number, presence: true
  validates :email, :phone_number, uniqueness: true
  validate :validate_country
  before_save :check_state

  def check_state
    self.state = self.country if state.nil?
  end

  def validate_country
    return if country.nil?
    unless User.country_code_list.include?(country)
      errors.add(:country, 'is not valid')
    end
  end

  def self.country_code_list
    ISO3166::Country.all.map { |country| country.alpha2 }
  end
end
