class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :followers
  has_many :followings
end
