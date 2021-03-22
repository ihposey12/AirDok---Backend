class HangarSerializer < ActiveModel::Serializer
  attributes :comments, :hangar_rentals, :id, :title, :description, :airport_codesize, :city, :state, :price, :picture, :size

  def comments
    ActiveModel::SerializableResource.new(object.comments,  each_serializer: CommentSerializer)
  end
end