class RenameBottlesUserstoBottlePrice < ActiveRecord::Migration[5.2]
  def change
    rename_table :bottles_users, :bottle_price
  end
end
