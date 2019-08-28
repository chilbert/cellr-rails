class CreateJoinTableBottleUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bottles, :users do |t|
      # t.index [:bottle_id, :user_id]
      t.index [:user_id, :bottle_id]
      t.numeric :price
    end
  end
end
