class AddMessageToDialogs < ActiveRecord::Migration[5.2]
  def change
  	add_column :dialog, :speech, :hstore, default: {}, null: false
  end
end
