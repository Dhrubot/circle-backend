class LikeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :liker
  # belongs_to :post
end
