class AddFValueToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :f_value, :float
  end
end
