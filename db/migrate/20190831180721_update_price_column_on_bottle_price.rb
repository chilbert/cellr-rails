class UpdatePriceColumnOnBottlePrice < ActiveRecord::Migration[5.2]
  def change
    change_column :bottle_prices, :price, :numeric

  end
end
