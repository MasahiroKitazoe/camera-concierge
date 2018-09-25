class CreateCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :cameras do |t|
      t.string          :name
      t.integer         :price
      t.integer         :pixel
      t.integer         :min_iso
      t.integer         :max_iso
      t.integer         :continuous_shooting_performance
      t.integer         :shutter_speed
      t.integer         :monitor_size
      t.integer         :monitor_pixel
      t.integer         :max_num_of_shooting
      t.boolean         :four_k
      t.boolean         :wifi
      t.boolean         :touch_panel
      t.boolean         :move_panel
      t.float           :weight
      t.float           :width
      t.float           :height
      t.float           :depth
      t.references      :frame, foreign_key: true
      t.references      :maker, foreign_key: true
      t.references      :finder, foreign_key: true
      t.timestamps
    end
  end
end
