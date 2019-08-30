class UpdateCommentTableColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :comments, :description, :comment
  end
end
