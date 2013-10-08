class ChangeProfileColumn < ActiveRecord::Migration
  def up
     remove_column  :profiles, :country
     remove_column  :profiles, :city
     remove_column  :profiles, :state
     
     change_table :profiles do |t|
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
     end
    end
   
  def down
    
     remove_column  :profiles, :country_id
     remove_column  :profiles, :city_id
     remove_column  :profiles, :state_id
    
    change_table :profiles do |t|
      t.string :country
      t.string :state
      t.string :city
     end
  end
end
