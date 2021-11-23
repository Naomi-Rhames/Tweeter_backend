class TweetSerializer < ActiveModel::Serializer
    attributes :id, :description, :username

    def username
        self.object.user.username
    end
end