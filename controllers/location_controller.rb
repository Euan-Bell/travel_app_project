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

post '/locations/new' do
  Location.new(params).save
  redirect to("/locations")
end

get '/locations/new' do
  @locations = Location.all
  erb ( :"location/new" )
end

post '/locations' do
  @location = Location.new(params)
  @location.save
  redirect to("/locations")
end

post '/locations/:id/delete' do
  Location.delete_all(params[:id])
  redirect to("/locations")
end
