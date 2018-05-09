require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )

get '/visits' do
  @realms = Realm.all
  @locations = Location.all
  @visits = Visit.all
  erb ( :"visit/index" )
end


post '/visits/new' do
  Realm.new(params).save
  Location.new(params).save
  redirect to('/visits')
end

get '/visits/new' do
  @realms = Realm.all
  @locations = Location.all

  erb ( :"visit/new" )
end

post '/visits' do
  @location = Location.new(params)
  @location.save
  @realm = Realm.new(params)
  @realm.save
  redirect to("/visits")
end

post '/visits/:id/delete' do
  visit = Visit.find(params[:id])
  visit.delete
  redirect to("/visits")
end
