class CreateProposes < ActiveRecord::Migration[5.2]
  def change
    create_table :proposes do |t|
      t.text :description
      t.string :value
      t.references :provider, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
