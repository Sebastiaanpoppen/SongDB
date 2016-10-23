class Photo < ApplicationRecord
  belongs_to :Artist
  mount_uploader :image, ImageUploader
end
