class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.string :middleInitial
      t.string :email
      t.string :sex
      t.string :birthDay
      t.string :cellPhone
      t.string :homePhone

      t.timestamps
    end
  end
end
