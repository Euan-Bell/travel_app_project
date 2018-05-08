require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )

get '/realms' do
  @realms = Realm.all
  erb ( :"realm/index" )
end

get '/realms/new' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"realm/new" )
end

get '/realms/edit' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"location/new" )
end
