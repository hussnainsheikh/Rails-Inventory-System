class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.text :product_model_number
      t.string :vendor_name
      t.integer :quantity
      t.decimal :value
      t.text :category

      t.timestamps
    end
  end
end
