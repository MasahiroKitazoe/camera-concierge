class AddColumnToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :max_num_of_shooting_with_finder, :integer
  end
end
