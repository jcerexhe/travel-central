class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :albums

  mount_uploader :picture, ProfilePictureUploader
end
