class User < ApplicationRecord
    has_secure_password #comes from the bycypt gem
    has_many :tweets, through: :comments
    has_many :comments
    # has_many :likes, :through => :tweets

    validates :email, :username, :bio, presence: true
    validates :email, :username, uniqueness: true

end
