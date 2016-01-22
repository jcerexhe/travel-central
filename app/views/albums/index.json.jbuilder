json.array!(@albums) do |album|
  json.extract! album, :id, :profile_id, :title, :city, :country, :latitude, :longitude
  json.url album_url(album, format: :json)
end
