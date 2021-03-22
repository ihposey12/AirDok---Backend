class User < ApplicationRecord
    validates :name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
    has_secure_password

    has_many :hangar_rentals, dependent: :destroy
    has_many :hangars, through: :hangar_rentals

    has_many :comments, dependent: :destroy
    has_many :hangars, through: :comments
end