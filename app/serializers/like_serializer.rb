class LikeSerializer < ActiveModel::Serializer
  attributes :id, :liker
  belongs_to :liker
  belongs_to :post
end
