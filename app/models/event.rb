class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  validates :location, presence: true
  validates :date, presence: true
  validates :title, presence: true, length: {minimum:5}
  validates :description, presence: true, length: {minimum:10, maximum:300}
end
