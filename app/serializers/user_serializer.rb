class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :authored_posts
  has_many :comments
  has_many :commented_posts
  has_many :followers
  has_many :followings
end
