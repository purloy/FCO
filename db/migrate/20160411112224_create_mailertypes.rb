class CreateMailertypes < ActiveRecord::Migration
  def change
    create_table :mailertypes do |t|
      t.string :mailer_type

      t.timestamps null: false
    end
  end
end
