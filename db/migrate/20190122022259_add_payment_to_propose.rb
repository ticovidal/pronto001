class AddPaymentToPropose < ActiveRecord::Migration[5.2]
  def change
    add_column :proposes, :payment, :integer, :default => 0
  end
end
