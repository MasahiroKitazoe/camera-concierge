class AddNearestmacroToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :nearest_shot_with_macro_mode, :float
  end
end
