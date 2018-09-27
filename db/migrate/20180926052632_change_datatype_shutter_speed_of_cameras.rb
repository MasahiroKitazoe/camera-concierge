class ChangeDatatypeShutterSpeedOfCameras < ActiveRecord::Migration[5.1]
  def change
    change_column :cameras, :shutter_speed, :string
    change_column :cameras, :move_panel, :string
    change_column :cameras, :continuous_shooting_performance, :float
    change_column :cameras, :monitor_size, :float
    change_column :cameras, :monitor_pixel, :float
  end
end
