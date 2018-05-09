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

location4 = Location.new({
    'location_name' => 'Bifrost the Rainbow Bridge',
    'realm_id' => realm4.id
  })
location4.save()

location5 = Location.new({
    'location_name' => 'Mimir’s well of wisdom',
    'realm_id' => realm5.id
  })
location5.save()

location6 = Location.new({
    'location_name' => 'The seeing lakes of Vanaheim',
    'realm_id' => realm6.id
  })
location6.save()

location7 = Location.new({
    'location_name' => 'Alfheim Sanctuary',
    'realm_id' => realm7.id
  })
location7.save()

location8 = Location.new({
    'location_name' => 'The Great Forge',
    'realm_id' => realm8.id
  })
location8.save()

location9 = Location.new({
    'location_name' => 'The Hellway',
    'realm_id' => realm9.id
  })
location9.save()

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

      visit4 = Visit.new({
        'location_id' => location4.id,
        'realm_id' => realm4.id
        })
  visit4.save()

  visit5 = Visit.new({
  'location_id' => location5.id,
  'realm_id' => realm5.id
  })
  visit5.save()


  visit6 = Visit.new({
  'location_id' => location6.id,
  'realm_id' => realm6.id
  })
  visit6.save()

  visit7 = Visit.new({
  'location_id' => location7.id,
  'realm_id' => realm7.id
  })
  visit7.save()

  visit8 = Visit.new({
  'location_id' => location8.id,
  'realm_id' => realm8.id
  })
  visit8.save()

  visit9 = Visit.new({
  'location_id' => location9.id,
  'realm_id' => realm9.id
  })
  visit9.save()
