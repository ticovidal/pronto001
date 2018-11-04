class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
