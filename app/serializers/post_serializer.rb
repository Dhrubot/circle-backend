class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location
  has_one :author
end
