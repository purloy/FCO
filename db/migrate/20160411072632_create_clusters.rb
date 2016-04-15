class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :cluster
      t.integer :userdetail_id

      t.timestamps null: false
    end
  end
end
