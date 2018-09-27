class AddSuperWideToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :super_wide, :boolean
  end
end
