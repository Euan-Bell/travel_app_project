require_relative( "../models/location.rb" )
require_relative( "../models/realm.rb" )
require_relative( "../models/visit.rb" )
require("pry")


Visit.delete_all()
Location.delete_all()
Realm.delete_all()




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

realm4 = Realm.new({
  'realm_name' => 'Midgard'
  })
realm4.save()

realm5 = Realm.new({
  'realm_name' => 'Jotunheim'
  })
realm5.save()

realm6 = Realm.new({
  'realm_name' => 'Vanaheim'
  })
realm6.save()

realm7 = Realm.new({
  'realm_name' => 'Alfheim'
  })
realm7.save()

realm8 = Realm.new({
  'realm_name' => 'Svartalfheim'
  })
realm8.save()

realm9 = Realm.new({
  'realm_name' => 'Helheim'
  })
realm9.save()

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
