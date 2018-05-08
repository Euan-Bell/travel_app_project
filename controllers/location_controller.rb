require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/visit.rb')
require_relative('../models/realm.rb')
require_relative('../models/location.rb')

get '/locations' do
  @locations = Location.all
  erb ( :"location/index" )
end

get '/locations/new' do
  @locations = Location.all
  erb ( :"location/new" )
end

post '/locations' do
  @locations = Location.all
  erb ( :"location/new" )
end
