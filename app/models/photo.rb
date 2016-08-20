class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :likes #redundant just for counting? join table used ? caching?
  has_many :users_who_liked, through: :likes, class_name: "User", foreign_key: :user_id, source: :user, required:false

  # mount_uploader :image_uri, ImageUploader

  def amount_of_likes
    self.likes.count
  end

end
