class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :habit
  has_many :checks, dependent: :destroy
end
