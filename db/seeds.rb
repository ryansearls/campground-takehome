# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib/tasks', 'seeds', 'sample_campground_data.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  t = Transaction.new
  t.name = row['name']
  t.campsites = row['campsites']
  t.price = row['price']
  t.save
  puts "#{t.name}, #{t.campsites} saved"
end 
puts csv_text