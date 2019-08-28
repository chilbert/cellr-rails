class DropBottlePriceTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :bottle_price
  end
end
