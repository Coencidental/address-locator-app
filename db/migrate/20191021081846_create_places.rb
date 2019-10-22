class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :number
      t.string :street
      t.string :suburb
      t.string :state
      t.string :zip
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
