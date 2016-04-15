class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :event_id
      t.integer :invite_sent
      t.integer :total_recepient
      t.integer :attending
      t.integer :unable_to_attend

      t.timestamps null: false
    end
  end
end
