class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :customer_number
      t.integer :day_part
      t.integer :first_seen_local
      t.integer :first_seen_utc
      t.integer :misc_id
      t.integer :location
      t.integer :model_id
      t.integer :tts
    end
  end
end
