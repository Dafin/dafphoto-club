class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :photos 
  has_many :likes
  has_many :liked_photos, through: :likes, class_name: "Photo", foreign_key: :photo_id, source: :photo
end
