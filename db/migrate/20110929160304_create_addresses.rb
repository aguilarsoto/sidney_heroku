class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :zip
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
