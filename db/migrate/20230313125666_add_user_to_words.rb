class AddUserToWords < ActiveRecord::Migration[7.0]
  # https://stackoverflow.com/questions/22815009/add-a-reference-column-migration-in-rails-4
  def change
    add_reference :words, :user, foreign_key: true
  end
end
