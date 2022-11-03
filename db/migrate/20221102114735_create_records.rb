class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :days,                   null: false
      t.integer :training_site_id,    null: false
      t.integer :training_event_id,   null: false
      t.integer :weight,              null: false
      t.integer :times_id,            null: false
      t.integer :set_count_id,        null: false
      t.text    :thoughts
      t.references :user,              null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
