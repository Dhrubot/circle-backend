class FollowerFollowingSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :following_id
  belongs_to :follower
  belongs_to :following
end
