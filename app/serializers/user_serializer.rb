class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :comments
  has_many :hangar_rentals
end