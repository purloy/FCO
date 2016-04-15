json.array!(@mailertypes) do |mailertype|
  json.extract! mailertype, :id, :mailer_type
  json.url mailertype_url(mailertype, format: :json)
end
