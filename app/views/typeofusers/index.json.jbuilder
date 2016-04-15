json.array!(@typeofusers) do |typeofuser|
  json.extract! typeofuser, :id, :user_type
  json.url typeofuser_url(typeofuser, format: :json)
end
