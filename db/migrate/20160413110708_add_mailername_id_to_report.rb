class AddMailernameIdToReport < ActiveRecord::Migration
  def change
    add_column :reports, :mailername_id, :integer
  end
end
