  namespace :db do

  desc "load countries data from csv"
  task :countries  => :environment do
    require 'csv'

    CSV.foreach("#{Rails.root}/lib/tasks/countries.csv", {:headers => true}) do |row|
      co = Country.create(
		  :name => row[1],
		  :fips104 => row[2],
		  :iso2 => row[3],
		  :iso3 => row[4],
		  :ison => row[5],
		  :internet => row[6],
		  :capital => row[7],
		  :map_reference => row[8],
		  :nationality_singular => row[9],
		  :nationality_plural => row[10],
		  :currency => row[11],
		  :currency_code => row[12],
		  :population => row[13],
		  :title => row[14],
		  :comment => row[15]
		)
      puts "#{co.name} created."
    end
  end
end