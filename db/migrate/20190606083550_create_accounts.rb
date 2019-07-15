class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name, default: 'no name', null: false, limit: 50
      t.string :email, defaul: 'no e-mail', null: false, limit: 50
      t.bigint :phone_number, null: false
      t.string :user_role, default: 'no role', limit: 10
      t.string :status, default: 'must capital', limit: 10
    end
  end
end
