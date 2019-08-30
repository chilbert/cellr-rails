class UpdateTableNameForPrice < ActiveRecord::Migration[5.2]
  def change
    rename_table :bottle_price, :bottle_prices
  end
end
