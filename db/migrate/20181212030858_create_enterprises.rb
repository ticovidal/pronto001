class CreateEnterprises < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprises do |t|
      t.string :company
      t.string :social
      t.string :cnpj
      t.references :enterpriseable, polymorphic: true

      t.timestamps
    end
  end
end
