class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :author
  has_many :comments
  has_many :likes

  def author
    UserSerializer.new(object.author)
  end
end
