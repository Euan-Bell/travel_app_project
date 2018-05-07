require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/city_controller')
require_relative('controllers/country_controller')
require_relative('controllers/visit_controller')

get '/homepage' do
  "hello world"
  erb( :"homepage/index" )
end

get '/homepage/showcities' do
  @cities = City.all
  @countries = Country.all
  erb ( :"city/index" )
end
