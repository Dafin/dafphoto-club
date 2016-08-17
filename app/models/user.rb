class User < ActiveRecord::Base
  has_many_and_belongs_to :photos
end
