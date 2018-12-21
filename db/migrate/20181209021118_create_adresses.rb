class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :number
      t.string :compl
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
