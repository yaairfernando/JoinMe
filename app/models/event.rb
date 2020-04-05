class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :invitations, foreign_key: :event_id
  has_many :attendees, through: :invitations, source: :attendee
  has_many :comments, dependent: :destroy

  validates :location, presence: true
  validates :image, presence: true, on: :create
  validates :date, presence: true
  validates :title, presence: true, length: {minimum:5}
  validates :description, presence: true, length: {minimum:10, maximum:800}

  scope :upcoming, -> { where('date >= ?', DateTime.now)}
  scope :passed, -> { where('date < ?', DateTime.now)}
end
