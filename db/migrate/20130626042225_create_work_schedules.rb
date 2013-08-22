class CreateWorkSchedules < ActiveRecord::Migration
  def change
    create_table :work_schedules do |t|
      t.integer :employeeId
      t.date :date
      t.datetime :startTime
      t.datetime :endTime
      t.datetime :loginTime
      t.datetime :logoutTime
      t.boolean :descrepancy

      t.timestamps
    end
  end
end
