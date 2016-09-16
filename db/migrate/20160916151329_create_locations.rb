class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
