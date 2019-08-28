class RemoveBottleIdFromWinery < ActiveRecord::Migration[5.2]
  def change
    remove_column :wineries, :bottle_id
  end
end
