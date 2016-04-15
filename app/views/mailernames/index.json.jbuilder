json.array!(@mailernames) do |mailername|
  json.extract! mailername, :id, :mailer_name
  json.url mailername_url(mailername, format: :json)
end
