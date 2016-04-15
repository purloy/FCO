json.array!(@reports) do |report|
  json.extract! report, :id, :event_id, :invite_sent, :total_recepient, :attending, :unable_to_attend
  json.url report_url(report, format: :json)
end
