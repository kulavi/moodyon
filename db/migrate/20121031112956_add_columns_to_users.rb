class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :about_me, :string
    add_column :users, :dob,      :string
    add_column :users, :hometown, :string
    add_column :users, :location, :string
    add_column :users, :relationships, :string
    add_column :users, :status, :string
    add_column :users, :gender, :string
    add_column :users, :organisation, :string
    add_column :users, :designation, :string
    add_column :users, :profession, :string
    add_column :users, :facebook_url, :string
    add_column :users, :educational_details, :string
    add_column :users, :facebook_image, :string
  end
end
