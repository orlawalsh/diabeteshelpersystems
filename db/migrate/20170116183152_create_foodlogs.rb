class CreateFoodlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :foodlogs do |t|
      t.datetime :date
      t.string :mealtype
      t.string :meal
      t.string :mood
      t.string :level

      t.timestamps
    end
  end
end
