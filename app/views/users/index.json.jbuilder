json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :dob, :sex, :photo, :password_digest
  json.url user_url(user, format: :json)
end
