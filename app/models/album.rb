class Album < ActiveRecord::Base
  belongs_to :profile
  has_many :album_images

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [city, country].compact.join(', ')
  end
end
