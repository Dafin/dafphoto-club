class Photo < ActiveRecord::Base

  has_many_and_belongs_to :users

  mount_uploaders :image_uri, Image_uri Uploader
end
