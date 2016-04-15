class CreateMailernames < ActiveRecord::Migration
  def change
    create_table :mailernames do |t|
      t.string :mailer_name

      t.timestamps null: false
    end
  end
end
