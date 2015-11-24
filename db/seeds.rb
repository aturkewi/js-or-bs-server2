# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Library.destroy_all

scraper = Adapters::LibraryScraper.new
libraries_array = scraper.collect_libraries
libraries_array.each do |library|
  Library.create(name: library)
end
