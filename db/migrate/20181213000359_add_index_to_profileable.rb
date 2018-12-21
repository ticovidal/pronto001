class AddIndexToProfileable < ActiveRecord::Migration[5.2]
  def change
  	add_index :profiles,:profileable_type
  	add_index :profiles,:profileable_id
  end
end
