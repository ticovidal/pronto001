class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :end
      t.references :category, foreign_key: true
      t.references :industry, foreign_key: true
      t.boolean :visibility
      t.string :mincost
      t.string :maxcost

      t.timestamps
    end
  end
end
