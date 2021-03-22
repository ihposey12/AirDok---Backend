class HangarRental < ApplicationRecord
    belongs_to :user
    belongs_to :hangar
end