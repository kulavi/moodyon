class Reason < ActiveRecord::Base
  attr_accessible :name
  has_many :user_sub_moods
  
  validates :name, :presence => true
end
