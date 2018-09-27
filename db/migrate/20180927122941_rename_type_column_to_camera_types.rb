class RenameTypeColumnToCameraTypes < ActiveRecord::Migration[5.1]
  def change
    rename_column :camera_types, :type, :name
    rename_column :finders, :type, :name
    rename_column :frames, :type, :name
  end
end
