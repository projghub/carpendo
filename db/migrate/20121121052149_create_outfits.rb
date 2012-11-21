class CreateOutfits < ActiveRecord::Migration
  def up
    create_table :outfits do |t|
      t.integer :user_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :outfits
  end
end
