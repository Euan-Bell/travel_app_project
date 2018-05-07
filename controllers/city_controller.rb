require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/visit.rb')
require_relative('../models/country.rb')
require_relative('../models/city.rb')

# get '/homepage' do
#   @cities = City.all
#   @countries = Country.all
#   erb ( :"city/index" )
# end
