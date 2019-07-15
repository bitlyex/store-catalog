class CreateGopays < ActiveRecord::Migration[5.2]
  def change
    create_table :gopays do |t|
      t.integer :balance
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
