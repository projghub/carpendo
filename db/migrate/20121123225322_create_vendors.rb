class CreateVendors < ActiveRecord::Migration
  def up
    create_table :vendors do |t|
      t.references :noteable, polymorphic: true
      t.references :rateable, polymorphic: true
      t.string :name, null: false
      t.string :address
      t.string :address2
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def down
    drop_table :vendors
  end
end
