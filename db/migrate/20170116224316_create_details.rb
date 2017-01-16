class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.integer :calories
      t.string :carbohydrates
      t.string :levels
      t.string :extra
      t.references :foodlog, foreign_key: true

      t.timestamps
    end
  end
end
