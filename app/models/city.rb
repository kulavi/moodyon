class City < ActiveRecord::Base
  attr_accessible :country_id, :state_id, :name, :latitude, :longitude, :timezone, :dma_id, :county, :code
  
  
  belongs_to :state
  belongs_to :country
  has_one :profile
end
