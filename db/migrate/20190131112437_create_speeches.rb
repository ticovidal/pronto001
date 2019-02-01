class CreateSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :speeches do |t|
      t.references :profile, foreign_key: true
      t.references :propose, foreign_key: true
      t.references :project, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
