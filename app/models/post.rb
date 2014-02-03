class Post < ActiveRecord::Base
  has_many :visuals
  has_attached_file :cover_image
end
