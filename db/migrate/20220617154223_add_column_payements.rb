class AddColumnPayements < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :description, :string
  end
end
