class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :creator, class_name: "User"
end
