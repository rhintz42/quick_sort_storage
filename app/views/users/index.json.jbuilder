json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :email, :picture, :username, :password_digest
  json.url user_url(user, format: :json)
end
