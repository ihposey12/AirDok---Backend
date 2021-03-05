class CommentSerializer < ActiveModel::Serializer
  attributes :username, :id, :title, :description, :rating, :created_at

  def username
    object.user.username
  end
end