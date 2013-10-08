class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :name
      t.string :description
      t.string :mood_picture

      t.timestamps
    end
  end
end
