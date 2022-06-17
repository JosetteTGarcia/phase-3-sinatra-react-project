class AddColumnIsNeedToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :is_need, :boolean
  end
end
