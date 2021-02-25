class Hangar < ApplicationRecord
    has_many :hangar_rentals
    has_many :hangars, through: :hangar_rentals
end