require_relative( "../models/city.rb" )
require_relative( "../models/country.rb" )
require_relative( "../models/visit.rb" )
require("pry")


country1 = Country.new({
  'country_name' => 'Germany'
  })
country1.save()

country2 = Country.new({
  'country_name' => 'Scotland'
  })
country2.save()

country3 = Country.new({
  'country_name' => 'Hungary'
  })
country3.save()

city1 = City.new({
  'city_name' => 'Berlin',
  'country_id' => country1.id
  })
city1.save(

)
city2 = City.new({
  'city_name' => 'Edinburgh',
  'country_id' => country2.id
  })
city2.save()

city3 = City.new({
    'city_name' => 'Budapest',
    'country_id' => country3.id
  })
city3.save()

visit1 = Visit.new({
    'city_id' => city1.id,
    'country_id' => country1.id
  })
visit1.save()

visit2 = Visit.new({
    'city_id' => city2.id,
    'country_id' => country2.id
    })
      visit2.save()

  visit3 = Visit.new({
    'city_id' => city3.id,
    'country_id' => country3.id
    })
      visit3.save()





binding.pry
nil
