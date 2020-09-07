class User < ApplicationRecord
    has_secure_password

    has_many :authored_posts, class_name: 'Post', foreign_key: 'author_id'

    before_save :downcase_attributes

    private

    def downcase_attributes
        downcaseable = ["username", "email"]

        self.attributes.each do |attr, val|
        self.send("#{attr}=",val.to_s.strip.downcase) if downcaseable.include?(attr)
        end
    end
end
