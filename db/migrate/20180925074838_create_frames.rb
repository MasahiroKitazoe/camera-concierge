class CreateFrames < ActiveRecord::Migration[5.1]
  def change
    create_table :frames do |t|
      t.string       :type
      t.timestamps
    end
  end
end
