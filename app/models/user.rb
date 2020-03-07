class User < ApplicationRecord
  before_save :down_case
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :name, presence :true, length: {minimum:3}
  validates :email, presence :true, length: {maximum:50},
            format: { width: VALID_EMAIL_REGEX },          
            uniqueness: { case_sensitive: false }

  private

  def down_case
    email.downcase!
  end
end
