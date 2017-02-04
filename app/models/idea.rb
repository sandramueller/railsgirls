class Idea < ApplicationRecord
  has_many :comments
  has_many :likes
  mount_uploader :picture, PictureUploader
end
