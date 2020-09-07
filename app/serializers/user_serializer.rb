class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :authored_posts
  has_many :commented_posts
end
