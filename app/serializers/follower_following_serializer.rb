class FollowerFollowingSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :follower
  belongs_to :following
end