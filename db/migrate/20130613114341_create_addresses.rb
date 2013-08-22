class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state
      t.integer :country
      t.string :zip
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
  end
end
