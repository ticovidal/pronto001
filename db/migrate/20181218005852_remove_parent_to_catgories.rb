class RemoveParentToCatgories < ActiveRecord::Migration[5.2]
  def change
  	remove_column :categories, :parent_id
  end
end
