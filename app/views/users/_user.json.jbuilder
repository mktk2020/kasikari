json.extract! user, :id, :userid, :username, :usermail, :pass, :prefecture, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
