class Office < ApplicationRecord
  belongs_to :category
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
