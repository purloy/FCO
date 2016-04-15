json.array!(@userdetails) do |userdetail|
  json.extract! userdetail, :id, :first_name, :middle_name, :last_name, :salutation, :organization, :department, :work_address, :work_mobile, :work_fax, :work_email, :work_internet, :assistant_name, :assistant_tel_no, :note, :date_of_birth, :nationality, :event_invited, :event_attended
  json.url userdetail_url(userdetail, format: :json)
end
