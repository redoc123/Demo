class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :state, :zip
  belongs_to :addressable, :polymorphic => true 
end
