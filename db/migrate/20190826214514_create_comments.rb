class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :bottle_id

      t.timestamps
    end
  end
end
