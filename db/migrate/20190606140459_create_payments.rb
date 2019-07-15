class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :balance
      t.integer :account_id
    end
  end
end
