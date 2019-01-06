class AddDependencyToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :dependency_id, :integer
    add_column :projects, :has_dependency, :boolean
  end
end
