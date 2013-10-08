class CreateSubMoods < ActiveRecord::Migration
  def change
    create_table :sub_moods do |t|
      t.references :mood
      t.string :name
      t.string :description
      t.string :sub_mood_picture

      t.timestamps
    end
    add_index :sub_moods, :mood_id
  end
end
