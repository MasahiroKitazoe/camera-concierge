class CreateCameraReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :camera_reviews do |t|
      t.references :camera, foreign_key: true
      t.references :review, foreign_key: true
      t.timestamps
    end
  end
end
