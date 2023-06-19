class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pigeon
end
