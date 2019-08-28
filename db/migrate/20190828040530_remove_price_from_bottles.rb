class RemovePriceFromBottles < ActiveRecord::Migration[5.2]
  def change
    remove_column :bottles, :price, :numeric
  end
end
