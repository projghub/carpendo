class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end

    add_index :users, :email, :unique => true
  end

  def down
    drop_table :users
  end
end
