class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :commentor, :post_id
  
  # belongs_to :post
  def commentor
    UserSerializer.new(object.commentor)
  end

end
