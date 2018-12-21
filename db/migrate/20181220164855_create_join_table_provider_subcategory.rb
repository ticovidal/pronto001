class CreateJoinTableProviderSubcategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :providers, :subcategories do |t|
      t.index [:provider_id, :subcategory_id]
      t.index [:subcategory_id, :provider_id]
    end
  end
end
