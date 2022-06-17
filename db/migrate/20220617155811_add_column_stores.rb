class AddColumnStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :type_of_retailer, :string
  end
end
