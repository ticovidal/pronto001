class ChangeApprovedDeefault < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :projects, :status, 'waiting'
  	change_column_default :proposes, :status, 'waiting'
  end
end
