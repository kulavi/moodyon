  namespace :db do

  desc "load states data from csv"
  task :states  => :environment do
    require 'csv'
    state = State.destroy_all
    CSV.foreach("#{Rails.root}/lib/tasks/states.csv", {:headers => true}) do |row|
     state = State.create(
		  :country_id => row[1],
		  :name => row[2],
		  :code => row[3],
		  :adm1code => row[4]  
		)
      puts "#{state.name} created."
    end
  end
end