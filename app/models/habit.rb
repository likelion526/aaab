class Habit < ApplicationRecord
  belongs_to :field
  has_many :goals
end
