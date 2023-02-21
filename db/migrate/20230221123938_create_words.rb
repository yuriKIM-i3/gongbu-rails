class CreateWords < ActiveRecord::Migration[7.0]
  def change
    drop_table :words, if_exists: true
    create_table :words do |t|
      t.string :vocabulary, null: false
      t.string :pronunciation, null: false
      t.text :meaning, null: false
      t.text :example

      t.timestamps
    end
  end
end
