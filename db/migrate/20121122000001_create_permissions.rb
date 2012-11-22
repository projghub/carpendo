class CreatePermissions < ActiveRecord::Migration
  def up
    create_table :permissions do |t|
      t.string :namespace
      t.string :controller
      t.string :action

      t.timestamps
    end
  end

  def down
    drop_table :permissions
  end
end
