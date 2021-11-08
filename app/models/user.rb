class User < ApplicationRecord
    has_many :tweets
    has_many :comments through :tweets
    has_many :likes through :tweets

end
