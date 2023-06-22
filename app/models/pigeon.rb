class Pigeon < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :img_url
  
  include PgSearch::Model
  pg_search_scope :search_by_pigeon,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
