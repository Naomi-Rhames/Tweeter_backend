class TweetSerializer < ActiveModel::Serializer
attributes :id, :description, :image_url
has_many :comments


   
end 