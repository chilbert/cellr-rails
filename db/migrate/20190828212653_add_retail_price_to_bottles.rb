class AddRetailPriceToBottles < ActiveRecord::Migration[5.2]
  def change
    add_column :bottles, :price, :numeric
  end
end
