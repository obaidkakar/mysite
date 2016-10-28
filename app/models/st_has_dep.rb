class StHasDep < ApplicationRecord
  belongs_to :department
  belongs_to :student
end
