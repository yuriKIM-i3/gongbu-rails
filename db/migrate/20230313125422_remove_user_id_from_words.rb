class RemoveUserIdFromWords < ActiveRecord::Migration[7.0]
  def up
    remove_column :words, :user_id, :integer
  end

  def down
    add_column :words, :user_id, :integer
  end
end
