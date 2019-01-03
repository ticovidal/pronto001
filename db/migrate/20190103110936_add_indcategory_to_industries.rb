class AddIndcategoryToIndustries < ActiveRecord::Migration[5.2]
  def change
    add_reference :industries, :indcategory, foreign_key: true
  end
end
