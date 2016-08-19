class User < ActiveRecord::Base
  has_many :photos 
  has_many :likes
  has_many :liked_photos, through: :likes, class_name: "Photo", source: :photo
end
