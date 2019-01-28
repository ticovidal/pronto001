class AddProjectToDialogs < ActiveRecord::Migration[5.2]
  def change
  	add_reference :dialogs, :propose, foreign_key: true
  	add_reference :dialogs, :project, foreign_key: true
  end
end
