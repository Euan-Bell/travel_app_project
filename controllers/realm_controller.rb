require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )


get '/realms' do
  @realms = Realm.all
  erb ( :"realm/index" )
end


post '/realms/new' do
  Realm.new(params).save
  redirect to ("/realms")
end



get '/realms/new' do
  @realms = Realm.all
  erb ( :"realm/new" )
end


post '/realms' do
  @realm = Realm.new(params)
  @realm.save
  redirect to("/realms")
end
