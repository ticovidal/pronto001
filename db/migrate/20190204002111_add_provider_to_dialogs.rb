class AddProviderToDialogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dialogs, :provider, foreign_key: true
  end
end
