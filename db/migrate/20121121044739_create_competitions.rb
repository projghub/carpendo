class CreateCompetitions < ActiveRecord::Migration
  def up
    create_table :competitions do |t|
      t.string :name, null: false
      t.integer :winner_id
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end

  def down
    drop_table :competitions
  end
end
