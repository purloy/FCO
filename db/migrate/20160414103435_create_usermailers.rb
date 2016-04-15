class CreateUsermailers < ActiveRecord::Migration
  def change
    create_table :usermailers do |t|
      t.string :send_from
      t.string :send_to
      t.text :content

      t.timestamps null: false
    end
  end
end
