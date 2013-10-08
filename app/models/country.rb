class Country < ActiveRecord::Base
  attr_accessible :name, :fips104, :iso2, :iso3, :ison, :internet, :capital, :map_reference, :nationality_singular, :nationality_plural, :currency, :currency_code, :population, :title, :comment
  
  has_one :profile
  has_many :states
  
end
