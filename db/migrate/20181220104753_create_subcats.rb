class CreateSubcats < ActiveRecord::Migration[5.2]
  def change
    create_table :subcats do |t|
      t.references :subcategory, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
