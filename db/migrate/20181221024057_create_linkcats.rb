class CreateLinkcats < ActiveRecord::Migration[5.2]
  def change
    create_table :linkcats do |t|
      t.references :provider, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
