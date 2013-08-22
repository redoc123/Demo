class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.string :middleInit
      t.string :sex
      t.date :birthDay
      t.string :email
      t.string :homePhone
      t.string :cellPhone
      t.integer :address
      t.integer :personable_id
      t.string :personable_type

      t.timestamps
    end
  end
end
