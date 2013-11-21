class AddFolioBillToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :folio_bill, :string
  end
end
