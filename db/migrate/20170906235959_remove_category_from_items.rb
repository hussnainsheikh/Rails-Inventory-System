class RemoveCategoryFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :category, :text
  end
end
