class Company < ActiveRecord::Base
  attr_accessible :about, :fax, :fein, :name, :phoneNumber, :website, :address_attributes
  
  has_one :address, :as=>:addressable, :dependent => :destroy

  accepts_nested_attributes_for :address
end
