require_relative( "../models/city.rb" )
require_relative( "../models/country.rb" )
require_relative( "../models/visit.rb" )
require("pry")


country1 = Country.new({
  'name' => 'Germany'
  })
country2 = Country.new({
  'name' => 'Scotland'
  })
country3 = Country.new({
  'name' => 'Hungary'
  })

city1 = City.new({
  'name' => 'Berlin',
  'country_id' => country1.id
  })

city2 = City.new({
  'name' => 'Edinburgh',
  'country_id' => country2.id
  })

city3 = City.new({
  'name' => 'Budapest',
  'country_id' => country3.id
  })





binding.pry
nil
