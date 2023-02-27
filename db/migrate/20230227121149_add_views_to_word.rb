class AddViewsToWord < ActiveRecord::Migration[7.0]
  def change
    add_column :words, :views, :integer
  end
end
