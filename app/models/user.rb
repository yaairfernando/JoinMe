class User < ApplicationRecord
  before_save :down_case
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :password, presence: true, length: {minimum: 6}
  validates :name, presence: true, length: {minimum:3}
  validates :email, presence: true, length: {maximum:50},
            format: { with: VALID_EMAIL_REGEX },          
            uniqueness: { case_sensitive: false }

  has_many :events, foreign_key: :creator_id

  private

  def down_case
    email.downcase!
  end
end
