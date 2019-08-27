class RemoveBrandFromBottles < ActiveRecord::Migration[5.2]
  def change
    remove_column :bottles, :brand
  end
end
