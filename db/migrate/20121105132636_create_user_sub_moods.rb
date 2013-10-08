class CreateUserSubMoods < ActiveRecord::Migration
  def change
    create_table :user_sub_moods do |t|
      t.integer :user_id
      t.integer :sub_mood_id
      t.integer :event_id
      t.integer :reason_id

      t.timestamps
    end
  end
end
