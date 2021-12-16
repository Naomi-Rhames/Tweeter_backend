class TweetSerializer < ActiveModel::Serializer
attributes :id, :description, :image_url, :username
has_many :comments

    def username
        self.object.user.username
    end  
end 