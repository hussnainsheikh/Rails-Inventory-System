class Item < ActiveRecord::Base
	resourcify
    attr_accessible :description, :name, :product_model_number, :quantity, :value, :vendor_name, :category_id, :status, :customer_id

self.per_page = 25

belongs_to :customer
belongs_to :category
#after_save :update_value
protected

end
