class Profile < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :city_id, :state_id, :country_id, :date_of_birth, :designation, :fname, :gender, :lname, :marital_status, :mobile_no, :org_name, :pincode, :profession, :user_id, :profile_picture
  
  belongs_to :user
  belongs_to :country
  belongs_to :state
  belongs_to :city
  
  mount_uploader :profile_picture, MoodPictureUploader
  
  validates :user_id, :presence => true
end
