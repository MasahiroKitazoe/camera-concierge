class AddCameraTypeToCamera < ActiveRecord::Migration[5.1]
  def change
    add_reference :cameras, :camera_type, foreign_key: true
  end
end
