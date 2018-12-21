class AddCategoryToIndustries < ActiveRecord::Migration[5.2]
  def change
    add_reference :industries, :category, foreign_key: true
  end
end
