class AddUsertypeToUserdetail < ActiveRecord::Migration
  def change
    add_column :userdetails, :usertype_id, :integer
  end
end
