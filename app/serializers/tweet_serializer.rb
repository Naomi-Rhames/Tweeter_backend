class TweetSerializer < ActiveModel::Serializer
attributes :id, :description, :image_url
# belongs_to :user
end 