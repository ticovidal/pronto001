class AddStatusToSpeeches < ActiveRecord::Migration[5.2]
  def change
    add_column :speeches, :status, :string
  end
end
