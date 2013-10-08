  namespace :db do

  desc "load cities data from csv"
  task :cities  => :environment do
    require 'csv'
    city = City.destroy_all
    debugger
    CSV.foreach("#{Rails.root}/lib/tasks/cities.csv", {:headers => true}) do |row|
     city = City.create(
	      :country_id => row[1], 
	      :state_id => row[2], 
	      :name => row[3], 
	      :latitude => row[4], 
	      :longitude => row[5], 
	      :timezone => row[6], 
	      :dma_id => row[7], 
	      :code => row[8]      
	      )
      puts "#{city.name} created."
    end
  end
end