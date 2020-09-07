class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :commentor, serializer: CommentCommentorSerializer
  # belongs_to :post
end
