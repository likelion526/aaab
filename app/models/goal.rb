class Goal < ApplicationRecord
  belongs_to :field
  belongs_to :habit
end
