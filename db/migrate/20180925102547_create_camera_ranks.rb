class CreateCameraRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :camera_ranks do |t|
      t.references      :camera, foreign_key: true
      t.references      :rank, foreign_key: true
      t.timestamps
    end
  end
end
