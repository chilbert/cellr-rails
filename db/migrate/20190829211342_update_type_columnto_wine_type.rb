class UpdateTypeColumntoWineType < ActiveRecord::Migration[5.2]
  def change
    rename_column :bottles, :type, :wine_type
  end
end
