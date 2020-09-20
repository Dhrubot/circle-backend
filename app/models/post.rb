class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :commentors, through: :comments
  has_many :likes

  validates :title, :location, :description, presence: true
end
