class AddBluetoothToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :bluetooth, :string
  end
end
