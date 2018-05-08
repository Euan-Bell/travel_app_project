require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/location_controller')
require_relative('controllers/realm_controller')
require_relative('controllers/visit_controller')

get '/' do
  "hello world"
  erb( :index )
end



get '/homepage/visited' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"Visted/index" )
end

get '/homepage/tovisit' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"to_visit/index" )
end

post '/homepage/visited' do
  Location.new(params).save
  Realm.new(params).save
  redirect to ('/homepage/visited')
end

get '/homepage/new' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"new/index" )
end

get '/homepage/delete' do
  @locations = Location.all
  @realms = Realm.all
  erb ( :"delete/index" )
end
