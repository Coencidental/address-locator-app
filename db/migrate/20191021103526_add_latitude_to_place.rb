class AddLatitudeToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :latitude, :float
  end
end
