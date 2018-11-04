class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :phone
      t.string :cellphone
      t.string :street
      t.integer :number
      t.string :compl
      t.string :neighbor
      t.string :city
      t.string :country
      t.string :company
      t.string :social
      t.string :cnpj
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
