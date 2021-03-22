class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :comments
  has_many :hangar_rentals
  has_many :hangars, through: :hangar_rentals
end