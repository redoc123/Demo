class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :fein
      t.string :phoneNumber
      t.string :fax
      t.text :about

      t.timestamps
    end
  end
end
