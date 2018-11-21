class AddApprovedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :approved, :integer
  end
end
