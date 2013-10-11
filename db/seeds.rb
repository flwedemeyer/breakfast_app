# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Breakfast.delete_all

['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11','12'].each do |month|
	(10..31).each do |day|
		date = "2011-#{month}-#{day}"

		url = "http://food.cs50.net/api/1.3/menus?meal=BREAKFAST&sdt=#{date}&output=json"

		resp = HTTParty.get(url)

		unless resp.empty?
			resp.each do |breakfast| 
				Breakfast.create entree: breakfast['name'], day: breakfast['date']
			end
		end
		
	end
end
