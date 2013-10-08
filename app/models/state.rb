class State < ActiveRecord::Base
  attr_accessible :country_id, :name, :code, :adm1code 
  

  belongs_to :country
  has_one :profile
  has_many :cities
end
