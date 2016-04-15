json.array!(@mailerlists) do |mailerlist|
  json.extract! mailerlist, :id, :mailername_id, :mailertype_id, :description, :recepient
  json.url mailerlist_url(mailerlist, format: :json)
end
