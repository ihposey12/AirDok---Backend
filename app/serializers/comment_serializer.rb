class CommentSerializer < ActiveModel::Serializer
  attributes :username, :id, :title, :description, :rating

  def username
    object.user.username
  end
end