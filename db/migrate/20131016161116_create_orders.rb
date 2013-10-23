class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.decimal :discount, :default => 0
      t.datetime :close_at
      t.decimal :total

      t.timestamps
    end
  end
end
