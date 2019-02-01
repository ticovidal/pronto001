class AddProfileToDialogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dialogs, :profile, foreign_key: true
  end
end
