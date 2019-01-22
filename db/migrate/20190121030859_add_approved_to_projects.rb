class AddApprovedToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :status, :integer
    add_column :projects, :approvedpropose, :integer
    add_column :proposes, :status, :integer
  end
end
