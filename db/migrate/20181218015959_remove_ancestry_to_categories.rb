class RemoveAncestryToCategories < ActiveRecord::Migration[5.2]
  def change
  	remove_column :categories, :ancestry
  end
end
