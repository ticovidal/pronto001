class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :project, foreign_key: true
      t.references :propose, foreign_key: true

      t.timestamps
    end
  end
end
