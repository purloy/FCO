class RemoveEventIdFromReport < ActiveRecord::Migration
  def change
    remove_column :reports, :event_id, :integer
  end
end
