class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.float :amount
      t.date :date_paid
      t.integer :category_id
      t.integer :store_id
    end
  end
end
