json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :age, :favourite_places, :occupation, :bio, :user_id
  json.url profile_url(profile, format: :json)
end
