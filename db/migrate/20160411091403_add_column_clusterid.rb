class AddColumnClusterid < ActiveRecord::Migration
  def change
  	add_column :userdetails, :cluster_id, :integer
  	remove_column :clusters, :userdetail_id, :interger
  end
end
