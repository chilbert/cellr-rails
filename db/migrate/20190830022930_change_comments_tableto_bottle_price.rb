class ChangeCommentsTabletoBottlePrice < ActiveRecord::Migration[5.2]
  def change
    rename_table :comments, :bottle_price
  end
end
