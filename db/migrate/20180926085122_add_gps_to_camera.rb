class AddGpsToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :waterproof, :string
    add_column :cameras, :gps, :boolean
    add_column :cameras, :nearest_shot, :float
    add_column :cameras, :anti_shake, :string
    add_column :cameras, :five_axis_anti_shake, :boolean
  end
end
