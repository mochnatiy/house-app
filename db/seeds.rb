# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ title: 'Москва' }, 
                      { title: 'Тверь' }, 
                      { title: 'Оренбург' }])

districts = District.create([{ city: cities.first, title: 'Тверской район' },
                             { city: cities.first, title: 'район Ховрино' },
                             { city: cities.first, title: 'район Левобережный' },
                             { city: cities.first, title: 'Донской район' },
                             { city: cities.first, title: 'Даниловский район' },
                             { city: cities[1], title: 'Заволжский район' },
                             { city: cities[1], title: 'Пролетарский район' },
                             { city: cities[1], title: 'Московский район' },
                             { city: cities[1], title: 'Центральный район' },
                             { city: cities.last, title: 'Дзержинский район' },
                             { city: cities.last, title: 'Ленинский район' },
                             { city: cities.last, title: 'Промышленный район' },
                             { city: cities.last, title: 'Центральный район' }])

streets = []
districts.each do |district|
  %w{Промышленная Советская Беломорская}.each do |street_name|
    streets << Street.create(city: district.city, district: district, title: street_name + ' улица')
  end
end

streets.each do |street|
  100.times do |i|
    number = i + 1
    number = number.to_s + '/1' if number % 2 == 0
    number = number.to_s + 'а' if number % 3 == 0 && number % 2 != 0
    number = number.to_s + 'б/1' if number % 11 == 0 

    House.create(street: street,
                 number: number )
  end
end

