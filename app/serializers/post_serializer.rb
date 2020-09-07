class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location
  belongs_to :author
  has_many :comments
  has_many :likes
end
