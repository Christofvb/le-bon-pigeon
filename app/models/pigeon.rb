class Pigeon < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings
    has_one_attached :img_url
end
