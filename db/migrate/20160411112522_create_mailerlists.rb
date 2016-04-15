class CreateMailerlists < ActiveRecord::Migration
  def change
    create_table :mailerlists do |t|
      t.integer :mailername_id
      t.integer :mailertype_id
      t.text :description
      t.string :recepient

      t.timestamps null: false
    end
  end
end
