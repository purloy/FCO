class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :salutation
      t.string :organization
      t.string :department
      t.string :work_address
      t.string :work_mobile
      t.string :work_fax
      t.string :work_email
      t.string :work_internet
      t.string :assistant_name
      t.string :assistant_tel_no
      t.text :note
      t.date :date_of_birth
      t.string :nationality
      t.string :event_invited
      t.string :event_attended

      t.timestamps null: false
    end
  end
end
