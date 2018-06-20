class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cnic
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
