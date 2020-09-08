class User < ApplicationRecord
    has_secure_password

    has_many :authored_posts, class_name: 'Post', foreign_key: 'author_id'
    has_many :commented_posts, class_name: 'Comment', foreign_key: 'commentor_id'
    has_many :likes, class_name: 'Like', foreign_key: 'liker_id'
    has_many :followers, class_name: 'FollowerFollowing', foreign_key: 'following_id'
    has_many :following, class_name: 'FollowerFollowing', foreign_key: 'follower_id'

    before_save :downcase_attributes

    private

    def downcase_attributes
        downcaseable = ["username", "email"]

        self.attributes.each do |attr, val|
        self.send("#{attr}=",val.to_s.strip.downcase) if downcaseable.include?(attr)
        end
    end
end
