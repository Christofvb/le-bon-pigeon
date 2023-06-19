class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :bookings
  has_many :pigeons, through: :bookings
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
