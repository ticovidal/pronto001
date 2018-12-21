class AddProfileableToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :profielable_id, :integer
    add_column :profiles, :profileable_type, :string
  end
end
