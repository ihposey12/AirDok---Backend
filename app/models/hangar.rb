class Hangar < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    has_many :hangar_rentals
    has_many :users, through: :hangar_rentals
end