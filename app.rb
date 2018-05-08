require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/location_controller')
require_relative('controllers/realm_controller')
require_relative('controllers/visit_controller')

get '/' do
  "hello world"
  erb( :index )
end
