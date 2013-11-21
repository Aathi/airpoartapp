class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :air_name
      t.string :air_code
      t.string :air_contactnumber
      t.text :air_address
      t.string :air_postcode
      t.text :air_descriptions
      t.text :air_factandfigures
      t.text :air_destination
      t.text :air_parking
      t.text :air_history
      t.text :air_hotels
      t.text :air_directions
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
