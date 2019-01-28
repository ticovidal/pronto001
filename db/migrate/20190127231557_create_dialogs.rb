class CreateDialogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dialogs do |t|
      t.text :message
      t.references :chat, foreign_key: true

      t.timestamps
    end
  end
end
