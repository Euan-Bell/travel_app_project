require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )

get '/visits' do
  @realms = Realm.all
  @locations = Location.all
  erb ( :"Visit/index" )
end
