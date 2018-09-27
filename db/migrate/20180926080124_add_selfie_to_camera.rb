class AddSelfieToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :selfie, :boolean
  end
end
