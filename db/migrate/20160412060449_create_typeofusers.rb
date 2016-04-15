class CreateTypeofusers < ActiveRecord::Migration
  def change
    create_table :typeofusers do |t|
      t.string :user_type

      t.timestamps null: false
    end
  end
end
