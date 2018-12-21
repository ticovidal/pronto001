class CreateIndCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :ind_categorizations do |t|
      t.references :industries, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
