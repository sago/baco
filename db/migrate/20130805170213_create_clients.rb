class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :rfc
      t.string :zip_code

      t.timestamps
    end
  end
end
