class AddDialogToSpeeches < ActiveRecord::Migration[5.2]
  def change
    add_reference :speeches, :dialog, foreign_key: true
  end
end
