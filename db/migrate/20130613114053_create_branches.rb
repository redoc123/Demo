class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :manager
      t.string :phoneNumber
      t.string :fax
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state
      t.integer :country
      t.string :zip

      t.timestamps
    end
  end
end
