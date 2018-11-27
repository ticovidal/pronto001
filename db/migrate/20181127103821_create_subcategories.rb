class CreateSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
