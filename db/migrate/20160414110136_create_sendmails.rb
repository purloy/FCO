class CreateSendmails < ActiveRecord::Migration
  def change
    create_table :sendmails do |t|
      t.string :send_from
      t.string :send_to
      t.text :content

      t.timestamps null: false
    end
  end
end
