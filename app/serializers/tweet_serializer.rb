class TweetSerializer < ActiveModel::Serializer
attributes :id, :description, :image_url, :comments, :username



def username
    self.object.user.username
end

end 