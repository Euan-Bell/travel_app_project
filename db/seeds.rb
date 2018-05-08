require_relative( "../models/location.rb" )
require_relative( "../models/realm.rb" )
require_relative( "../models/visit.rb" )
require("pry")


realm1 = Realm.new({
  'realm_name' => 'Niflheim'
  })
realm1.save()

realm2 = Realm.new({
  'realm_name' => 'Muspelheim'
  })
realm2.save()

realm3 = Realm.new({
  'realm_name' => 'Asgard'
  })
realm3.save()

location1 = Location.new({
  'location_name' => 'Hvergelmir',
  'realm_id' => realm1.id
  })
location1.save()

location2 = Location.new({
  'location_name' => 'River of flame',
  'realm_id' => realm2.id
  })
location2.save()

location3 = Location.new({
    'location_name' => 'Great Hall',
    'realm_id' => realm3.id
  })
location3.save()

visit1 = Visit.new({
    'location_id' => location1.id,
    'realm_id' => realm1.id
  })
visit1.save()

visit2 = Visit.new({
    'location_id' => location2.id,
    'realm_id' => realm2.id
    })
      visit2.save()

  visit3 = Visit.new({
    'location_id' => location3.id,
    'realm_id' => realm3.id
    })
      visit3.save()





binding.pry
nil
