class Customer < ActiveRecord::Base
	attr_accessible :name, :cnic, :phone, :address
	resourcify
	has_many :items
end
