class AddSubcategoryToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :subcategory, foreign_key: true
  end
end
