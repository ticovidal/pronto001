class CreateProvCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :prov_categorizations do |t|
      t.references :providers, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
