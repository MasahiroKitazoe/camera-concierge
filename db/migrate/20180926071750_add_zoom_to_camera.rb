class AddZoomToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :zoom, :float
    add_column :cameras, :min_focus, :integer
    add_column :cameras, :max_focus, :integer
  end
end
