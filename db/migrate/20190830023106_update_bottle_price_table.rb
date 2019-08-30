class UpdateBottlePriceTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :bottle_price, :title
    remove_column :bottle_price, :comment
    remove_column :bottles, :price
    add_column :bottle_price, :price, :numerical
  end
end
