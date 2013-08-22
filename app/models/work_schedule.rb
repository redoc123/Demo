class WorkSchedule < ActiveRecord::Base
  attr_accessible :date, :descrepancy, :employeeId, :endTime, :loginTime, :logoutTime, :startTime
end
