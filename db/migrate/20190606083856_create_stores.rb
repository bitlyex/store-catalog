class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name_store, limit: 20, default: 'no name'
      t.string :address, limit: 50, default: 'no address'
      t.text :subdistrict, limit: 10, null:false
      t.text :province, limit: 20, null:false
      t.text :country, limit: 20, null:false
      t.integer :account_id, default: 0
      t.integer :payment_id, default: 0
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
