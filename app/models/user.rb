class User < ActiveRecord::Base
  has_many :photos 
  has_many :likes
  has_many :liked_photos, through: :likes, class_name: "Photo", foreign_key: :photo_id, source: :photo
end
