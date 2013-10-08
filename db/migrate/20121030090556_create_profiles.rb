class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string  :fname
      t.string  :lname
      t.string  :address_line_1
      t.string  :address_line_2
      t.string  :gender
      t.date    :date_of_birth
      t.string  :marital_status
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :pincode
      t.string  :mobile_no
      t.string  :org_name
      t.string  :designation
      t.string  :profession

      t.timestamps
    end
  end
end
