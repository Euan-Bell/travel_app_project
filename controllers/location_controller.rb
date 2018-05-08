require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/visit.rb')
require_relative('../models/realm.rb')
require_relative('../models/location.rb')

# get '/homepage' do
#   @cities = City.all
#   @countries = Country.all
#   erb ( :"city/index" )
# end
