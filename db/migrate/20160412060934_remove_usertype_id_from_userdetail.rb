class RemoveUsertypeIdFromUserdetail < ActiveRecord::Migration
  def change
    remove_column :userdetails, :usertype_id, :integer
  end
end
