require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/visit.rb')
require_relative('../models/realm.rb')
require_relative('../models/location.rb')

get '/locations' do
  @locations = Location.all
  erb ( :"locations/index" )
end

get '/locations/new' do
  @locations = Location.all
  erb ( :"realm/new" )
end
