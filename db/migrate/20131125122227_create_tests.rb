class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :emailid
      t.string :encrypted_password

      t.timestamps
    end
  end
end