class User < ApplicationRecord
    has_secure_password

    before_save :downcase_attributes

    private

    def downcase_attributes
        downcaseable = ["username", "email"]

        self.attributes.each do |attr, val|
        self.send("#{attr}=",val.to_s.strip.downcase) if downcaseable.include?(attr)
        end
    end
end
