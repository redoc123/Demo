class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :jobTitle
      t.date :hireDate
      t.string :ssn
      t.decimal :baseSalary
      t.decimal :commission
      t.decimal :bonus
      t.integer :payCycle
      t.integer :department
      t.integer :branch
      t.integer :manager

      t.timestamps
    end
  end
end
