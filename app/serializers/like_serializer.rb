class LikeSerializer < ActiveModel::Serializer
  attributes :id, :liker, :post_id
  belongs_to :liker, serializer: UserSerializer
  # belongs_to :post
end
