# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

all_category = Category.where(name: 'All').first_or_create(name: 'All')
cottage_category = Category.where(name: 'Cottage').first_or_create(name: 'Cottage')
apartment_category = Category.where(name: 'Apartment').first_or_create(name: 'Apartment')
townhouse_category = Category.where(name: 'Townhouse').first_or_create(name: 'townhouse')

