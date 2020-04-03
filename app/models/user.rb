class User < ApplicationRecord
  before_save :down_case
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :password, presence: true, length: {minimum: 6}
  validates :name, presence: true, length: {minimum:3}
  validates :email, presence: true, length: {maximum:50},
            format: { with: VALID_EMAIL_REGEX },          
            uniqueness: { case_sensitive: false }

  has_many :events, foreign_key: :creator_id, dependent: :destroy
  has_many :invitations, foreign_key: :attendee_id, dependent: :destroy
  has_many :invited_events, through: :invitations, source: :event
  has_many :attended_events, through: :invitations, source: :event

  def upcoming_events
    attended_events.where('date >= ? AND accepted = ?', DateTime.now, true)
  end

  def previous_events
    attended_events.where('date < ? AND accepted = ?', DateTime.now, true)
  end
  
  private
  def down_case
    email.downcase!
  end

end
