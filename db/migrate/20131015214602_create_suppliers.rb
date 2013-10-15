class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :rfc
      t.string :zip_code
      t.string :website

      t.timestamps
    end
  end
end
