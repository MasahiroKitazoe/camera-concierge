class AddFValueWideToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :f_value_wide, :float
  end
end
