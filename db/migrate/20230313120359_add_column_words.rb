class AddColumnWords < ActiveRecord::Migration[7.0]
  def up
    add_column :words, :user_id, :integer
  end

  def down
    remove_column :words, :user_id, :integer
  end
end
