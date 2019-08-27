class CreateWineries < ActiveRecord::Migration[5.2]
  def change
    create_table :wineries do |t|
      t.string :name
      t.integer :bottle_id
    end
  end
end
