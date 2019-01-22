class RemoveStatusToProjects < ActiveRecord::Migration[5.2]
  def change
  	remove_column :projects, :status
    remove_column :proposes, :status
    add_column :projects, :status, :integer, :default => "waiting"
    add_column :proposes, :status, :integer, :default => "waiting"
  end
end
