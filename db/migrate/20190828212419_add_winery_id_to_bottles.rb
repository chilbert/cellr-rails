class AddWineryIdToBottles < ActiveRecord::Migration[5.2]
  def change
    add_column :bottles, :winery_id, :integer
  end
end
