class AddUserIdToFoodlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :foodlogs, :user_id, :integer
  end
end
