class AddTypeofuserToUserdetail < ActiveRecord::Migration
  def change
    add_column :userdetails, :typeofuser_id, :integer
  end
end
