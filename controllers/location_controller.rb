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
  @realms = Realm.all
  erb ( :"location/new" )
end

post '/locations' do
  location = Location.new(params)
  location.save
  redirect to("/locations")
end



# post '/locations' do
#   @location = Location.new(params)
#   binding.pry
#   @location.save
#   redirect to("/locations")
# end

post '/locations/:id/delete' do
  location = Location.find(params[:id])
  location.delete
  redirect to("/locations")
end
