class Person < ActiveRecord::Base
  attr_accessible :birthDay, :cellPhone, :email, 
  				  :firstName, :homePhone, :lastName, 
  				  :middleInit, :sex, :address_attributes

  belongs_to :personable, :polymorphic => true

  has_one :address, :as=>:addressable, :dependent => :destroy

  accepts_nested_attributes_for :address
end
