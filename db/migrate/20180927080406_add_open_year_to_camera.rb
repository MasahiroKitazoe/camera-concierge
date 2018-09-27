class AddOpenYearToCamera < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :open_year, :integer
    add_column :cameras, :open_month, :integer
  end
end
