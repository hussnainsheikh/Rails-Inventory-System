class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_column :users, :name, :string
    add_column :users, :designation, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :gender, :string
  end
end
