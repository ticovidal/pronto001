class RemoveProfileidtodableToIndustriesproviders < ActiveRecord::Migration[5.2]
  def change
  	remove_column :profiles, :profielable_id, :integer
  	add_column :profiles, :profileable_id, :integer
  	remove_column :industries, :profile_id
  	remove_column :providers, :profile_id
  end
end
