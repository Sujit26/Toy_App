require 'bcrypt'
class User < ApplicationRecord
    has_many :microposts, dependent: :destroy
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    validates :email, presence: true, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }
    has_secure_password
    attr_accessor :remember_token, :activation_token
    before_save :downcase_email
    # before_create :create_activation_digest 

    private
    def downcase_email
        self.email = email.downcase
    end
    
end
