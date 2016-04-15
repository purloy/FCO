class CreateMclusters < ActiveRecord::Migration
  def change
    create_table :mclusters do |t|
      t.string :cluster_name
      t.boolean :feature
      t.integer :members

      t.timestamps null: false
    end
  end
end
