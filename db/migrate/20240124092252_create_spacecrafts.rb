class CreateSpacecrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :spacecrafts do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.string :direction

      t.timestamps
    end
  end
end
