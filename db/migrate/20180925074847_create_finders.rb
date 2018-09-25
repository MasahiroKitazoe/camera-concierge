class CreateFinders < ActiveRecord::Migration[5.1]
  def change
    create_table :finders do |t|
      t.string        :type
      t.timestamps
    end
  end
end
