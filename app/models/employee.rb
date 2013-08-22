class Employee < ActiveRecord::Base
  attr_accessible :baseSalary, :bonus, :branch, :commission, 
  				  :department, :hireDate, :jobTitle, :manager, 
  				  :payCycle, :ssn, :person_attributes
  
  has_one :person, :as => :personable, :dependent => :destroy

  accepts_nested_attributes_for :person
end
